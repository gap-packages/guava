/*
 * minimum-weight.c
 *
 * Minimum Hamming weight computation for linear codes over
 * finite field.
 *
 * Note that:
 *  q=2, if the code is doubly-even then the weights of the
 *          code satisfy 0 mod 4
 *       if the code is singly-even then the weights of the
 *          code satisfy 0 mod 2
 *       provision for code with codewords of minimum weight
 *          satisfies 1 mod 2 (odd) and 3 mod 4 constraints
 *          are also taken into account
 *  q=3, if the code is self-orthogonal (or self-dual) then
 *          the weights of the code satisfy 0 mod 3.
 * In order to take these constraints into account, a parameter
 * 'm' or 'mod' is used as an argument to this program.
 * 
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include "minimum-weight-gf2.h"
#include "minimum-weight-gf3.h"
#include "popcount.h"
#include "config.h"
#include "types.h"

/*--------------------- Function prototypes -----------------------*/
int  generator_matrix(char *fname, MATRIX *M);
void print_usage(FILE *stream, int exitcode, char *str);
int  mindist(MATRIX G, int m_mod, int lower_bound);
int  cyclic_mindist(MATRIX G, int m_mod, int lower_bound);
/*-----------------------------------------------------------------*/

/* Main entry point */
int main(int argc, char *argv[]) {
	MATRIX G;
	FILE *fptr;
	int opt, dmin;
	int cyclic_code, m_mod, lower_bound;
	char *output_file;
	const char* const short_options = "hcmlo:";	/* Valid short option characters */
	const struct option long_options[] = {		/* Valid long options strings    */
		{ "help",        0, NULL, 'h' },
		{ "cyclic",      0, NULL, 'c' },
		{ "mod",         1, NULL, 'm' },
		{ "lower-bound", 1, NULL, 'l' },
		{ "out",         1, NULL, 'o' },
    	{ NULL,          0, NULL, 0   }         /* Required at end of array      */
	};	

	if (argc < 2) print_usage(stderr, -1, argv[0]);	
	cyclic_code = 0; m_mod = 0; lower_bound = 1; output_file = NULL;	/* default values */
	do {
		opt = getopt_long(argc, argv, short_options, long_options, NULL);
		switch (opt) {
			case 'h':	/* -h or --help */
				print_usage(stdout, 1, argv[0]);
			case 'c':	/* -c or --cyclic */
				cyclic_code = 1;
				break;
			case 'm':	/* -m or --mod */
				m_mod = atoi(optarg);
				break;
			case 'l':	/* -l or --lower-bound (argument follows) */
				lower_bound = atoi(optarg);
				break;
			case 'o':	/* -o or --out (argument follows) */
				output_file = optarg;
				break;
			case '?':	/* invalid option */
				print_usage(stderr, -1, argv[0]);
			case -1:	/* done */
				break;
			default:	/* something else unexpected */
				abort();
		}
	} while (opt != -1);
	
	/* Initialisation */
	init_popcount();
	
	/* Read generator matrix from file */
	generator_matrix(argv[optind], &G);

	if (cyclic_code)
		dmin = cyclic_mindist(G, m_mod, lower_bound);
	else
		dmin = mindist(G, m_mod, lower_bound);
	
	if (dmin) {
		printf("Minimum weight: %d\n", dmin); fflush(stdout);

		if (output_file) {
			fptr = fopen(output_file, "w");
			if (!fptr) {
				fprintf(stderr, "Unable to open %s\n", output_file); return -1;
			}
			fprintf(fptr, "GUAVA_TEMP_VAR := %d;\n", dmin);
			fclose(fptr);
		}
	}
	
	/* Deallocate memory */
	clear_popcount();
	
	return 0;
}

/* Display options to use this program */
void print_usage(FILE *stream, int exitcode, char *str) {
	fprintf(stream, "Usage: %s options [generator matrix file]\n", str);
	fprintf(stream, "   -h --help             Display this help screen\n");
	fprintf(stream, "   -c --cyclic           Indicate that the code is cyclic\n");
	fprintf(stream, "   -l --lower-bound [x]  Known lower-bound on the minimum distance\n");
	fprintf(stream, "   -m --mod [x]          Constraint on minimum weight codeword\n");
	fprintf(stream, "                         1 : 0 mod 2\n");
	fprintf(stream, "                         2 : 1 mod 2\n");
	fprintf(stream, "                         3 : 3 mod 4\n");
	fprintf(stream, "                         4 : 0 mod 4\n");
	fprintf(stream, "                         5 : 0 mod 3\n");
	fprintf(stream, "\n");
	exit(exitcode);
}

/* Read generator matrix from file */
int generator_matrix(char *fname, MATRIX *M) {
	int i, j;
	FILE *fptr;

	fptr = fopen(fname, "r");
	if (!fptr) {
		fprintf(stderr, "Error opening %s\n", fname);
		return -1;
	}
	if ( fscanf(fptr, "%d %d %d\n", &M->rows, &M->cols, &M->q) < 0 ) {
		fprintf(stderr, "Error reading header of %s\n", fname);
	}
	M->m = (unsigned int **)malloc(M->rows * sizeof(unsigned int *));
	for (i=0; i<M->rows; i++) 
		M->m[i] = (unsigned int *)malloc(M->cols * sizeof(unsigned int));
	for (i=0; i<M->rows; i++) {
		for (j=0; j<M->cols; j++) {
			if ( fscanf(fptr, "%d ", &M->m[i][j]) < 0 ) {
				fprintf(stderr, "Error reading data from %s\n", fname);
			}
		}
	}

	return 0;
}

/* Minimum weight for cyclic code */
int cyclic_mindist(MATRIX G, int m_mod, int lower_bound) {
	if (G.q == 2)		/* binary field */
		return cyclic_mindist_gf2(G, m_mod, lower_bound);
	else if (G.q == 3)	/* ternary field */
		return cyclic_mindist_gf3(G, m_mod, lower_bound);
	else {
		fprintf(stderr, "Minimum weight computation over this field is not implemented yet\n");
		return -2;
	}
}

/* Minimum weight for general linear code */
int mindist(MATRIX G, int m_mod, int lower_bound) {
	if (G.q == 2)		/* binary field */
		return mindist_gf2(G, m_mod, lower_bound);
	else if (G.q == 3)	/* ternary field */
		return mindist_gf3(G, m_mod, lower_bound);
	else {
		fprintf(stderr, "Minimum weight computation over this field is not implemented yet\n");
		return -2;
	}
}
