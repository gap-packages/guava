/*
 * minimum-weight-gf3.c
 *
 * Minimum Hamming weight computation for codes over GF(3)
 * The core of computation is in this src file
 *
 * NOTES:
 *  ¯ The GF(3) vectors are represented as two packed long
 *    integers, i.e. GF3_VEC structure in minimum-weight-gf3.h.
 *    Each of the long integer is either 32-bit or 64-bit,
 *    depending on the machine architecture, see config.h
 *
 *  ¯ This packing of GF(3) vectors and their vector manipulations
 *    follow the description given in the paper by
 *    
 *    K. Harrison, D. Page and N. P. Smart, "Software implementation
 *       of finite fields of characteristic three, for use in
 *       pairing-based cryptosystems", London Mathematical Society
 *       Journal of Computation and Mathematics, vol. 5, pp.181--193,
 *       2002
 *    
 *  ¯ To efficiently generate combination patterns, revolving door
 *    algorithm is used here. This algorithm has the property that
 *    in going to the next combination pattern, there is only one
 *    position that is exchanged, i.e. one 'In' and one 'Out'. The
 *    implementation here follows the third algorithm in the paper
 *    by 
 *    
 *    Clement W.H. Lam and Leonard H. Soicher, "Three new combination
 *       algorithms with minimal change property", Communications
 *       of the ACM, vol. 25, no. 8, August 1982
 *
 *    In the current version of the code, the generation of combination
 *    patterns does not fully exploit the the revolving door property
 *    yet--further (speed) optimisation is possible.
 *
 *  ¯ To generate all n-tupple of non zero elements of GF(3), Bitner's
 *    algorithm is used. See Algorithm L (Loopless Gray binary
 *    generation) in Knuth's book.
 *    
 *  ¯ The code here is not yet optmised, your contributions in this
 *    respect are greatly appreciated.
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
#include <math.h>
#include "minimum-weight-gf3.h"
#include "popcount.h"
#include "config.h"
#include "types.h"

/*--------- Some useful macros for updating upper-bound ---------*/
#define ROUND_0_MOD_3(d)	(((int)ceil((double)d/3.0))*3)	/* for self-orthogonal ternary code */

/*-------------------- Function prototypes ----------------------*/
void init_gf3(GF3 *gf);
void clear_gf3(GF3 *gf);
GF3_VEC **to_packed_integer_gf3(MATRIX *G, int nBlocks);
int  gf3_gauss_jordan(GF3 *gf, MATRIX *M, int start);
void mat_packed_print_gf3(GF3_VEC **M, int nBlocks, int dim, int length);
void update_info_gf3(PACKED_MATRIX_GF3 *G, INFO *info);
void cyclic_update_info_gf3(PACKED_MATRIX_GF3 *G, INFO *info);
void __mindist_gf3(PACKED_MATRIX_GF3 *G, INFO *info);
void __cyclic_mindist_gf3(PACKED_MATRIX_GF3 *G, INFO *info);
/*---------------------------------------------------------------*/

/* Return the minimum weight of a general ternary linear code */
int mindist_gf3(MATRIX G, mod_t m_mod, int lower_bound) {
	int i, j, l, rank, pos;
	double steps;
	unsigned int sum=0;
	PACKED_MATRIX_GF3 packedG;
	INFO info;
	GF3 gf;

	/* Initialise GF(3) */
	init_gf3(&gf);
	
	/* 
	 * Knowing G, now build an array of generator matrices with
	 * disjoint information sets. These matrices are stored in
	 * packed integer format
	 * 
	 */
	j = (G.cols - G.rows) + 1;	/* maximum possible number of matrices */
	packedG.mat = (GF3_VEC ***)malloc(j * sizeof(GF3_VEC **));
	packedG.rank= (unsigned short *)malloc(j * sizeof(unsigned short));
	packedG.dimension = G.rows;
	packedG.block_length = G.cols;
	packedG.nMatrices = packedG.nFullRankMatrices = 0;
	packedG.nBlocks = (!(G.cols % BITSIZE)) ? (G.cols / BITSIZE) : (G.cols / BITSIZE)+1;
	for (i=0,pos=0;;i++) {
		if (pos >= G.cols) break;
		rank = gf3_gauss_jordan(&gf, &G, pos);	/* what is the rank at column 'pos'? */
		if (!rank) {
			pos++;
			continue;
		}
		
		/* Convert the reduced echelon matrix into packed integer format */	
		packedG.mat[i] = to_packed_integer_gf3(&G, packedG.nBlocks);
		
		packedG.rank[i] = rank;
		pos += rank;
		packedG.nMatrices++;
		if (rank == G.rows) packedG.nFullRankMatrices++;
	}

	/*---------------------- core computation starts here -------------------------*/
	
	printf("[%d,%d] linear code over GF(3) - minimum weight evaluation\n", G.cols, G.rows);
	printf("Known lower-bound: %d\n", lower_bound);
	printf("There are %d generator matrices, ranks : ", packedG.nMatrices);
	for (i=0; i<packedG.nMatrices; i++) printf("%d ", packedG.rank[i]); printf("\n");
	info.weight_constraint = m_mod;
	if (m_mod == C_0MOD3) 
		printf("The weight of the minimum weight codeword satisfies 0 mod 3 congruence\n");
	fflush(stdout);
	
	/* Obtain the first lower-bound */
	info.known_lower_bound = lower_bound;
	info.lower_bound = 2 * packedG.nFullRankMatrices;
	for (i=packedG.nFullRankMatrices; i<packedG.nMatrices; i++) {
		j = 2 - (G.rows - packedG.rank[i]);
		if (j>0) info.lower_bound += j;
	}

	/* Information weight 1 */
	printf("Enumerating codewords with information weight 1 (w=1)\n"); fflush(stdout);
	steps = 0; info.upper_bound = G.cols; i = packedG.nMatrices; 
	do { --i;
		j = packedG.dimension;
		do { --j;
			steps++;
			sum = 0; l = packedG.nBlocks;
			do { --l;
				sum += (popcount(packedG.mat[i][j][l].v1) + popcount(packedG.mat[i][j][l].v2));
			} while (l);
			if (sum < info.upper_bound) {
				info.upper_bound = sum;
				printf("    Found new minimum weight %d\n", info.upper_bound); fflush(stdout);
				if (info.upper_bound <= info.known_lower_bound) break;
			}
		} while (j);
		if (sum <= info.known_lower_bound) {
			printf("The known lower-bound is met, enumeration completed.\n");
			info.upper_bound = sum;
			goto completed;
		}
	} while(i);
	
	/* Update progress information */
	info.info_weight_completed = 1;
	update_info_gf3(&packedG, &info);
	
	printf("Number of matrices required for codeword enumeration %d\n", info.matrices_req);
	printf("Completed w= 1, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
			steps, info.displayed_lower_bound, info.upper_bound); fflush(stdout);
	if (info.displayed_lower_bound >= info.upper_bound) goto completed;
	printf("Termination expected with information weight %d at matrix %d\n",
			info.max_info_weight_req, info.ith_matrix);
	printf("-----------------------------------------------------------------------------\n");
	
	/* The following function is executed for higher minimum weight */
	__mindist_gf3(&packedG, &info);
	
	/*------------------------ end of core computation ----------------------------*/

completed:	
	/* Deallocating memory */	
	for (i=0; i<packedG.nMatrices; i++) {
		for (j=0; j<G.rows; j++) free(packedG.mat[i][j]);
		free(packedG.mat[i]);
	}
	free(packedG.mat);
	clear_gf3(&gf);
	
	return info.upper_bound;
}

/* Return the minimum weight of a ternary cyclic code */
int cyclic_mindist_gf3(MATRIX G, mod_t m_mod, int lower_bound) {
	int j, l, rank;
	unsigned int sum=0;
	PACKED_MATRIX_GF3 packedG;
	INFO info;
	GF3 gf;

	/* Initialise GF(3) */
	init_gf3(&gf);
	
	/* 
	 * For cyclic code, only one information set is required, so
	 * only one generator matrix (in packed integer format) is
	 * needed.
	 * 
	 */
	j = 1;	/* only one generator matrix */
	packedG.mat = (GF3_VEC ***)malloc(j * sizeof(GF3_VEC **));
	packedG.rank= (unsigned short *)malloc(j * sizeof(unsigned short));
	packedG.dimension = G.rows;
	packedG.block_length = G.cols;
	packedG.nMatrices = j; 
	packedG.nFullRankMatrices = 1 + ((G.cols - G.rows)/G.rows);
	packedG.nBlocks = (!(G.cols % BITSIZE)) ? (G.cols / BITSIZE) : (G.cols / BITSIZE)+1;
	rank = gf3_gauss_jordan(&gf, &G, 0);
	if (!rank) {
		fprintf(stderr, "ERROR: rank is 0\n\n"); return -1;
	}
		
	/* Convert the reduced echelon matrix into packed integer format */	
	packedG.mat[0] = to_packed_integer_gf3(&G, packedG.nBlocks);
		
	packedG.rank[0] = rank;
	if (rank != G.rows) {
		fprintf(stderr, "ERROR: full rank generator matrix cannot be obtained.\n");
		fprintf(stderr, "       Please provide a full-rank generator matrix as an input.\n\n");
		return -1;
	}

	/*---------------------- core computation starts here -------------------------*/
	
	printf("[%d,%d] cyclic code over GF(3) - minimum weight evaluation\n", G.cols, G.rows);
	printf("Known lower-bound: %d\n", lower_bound);
	info.weight_constraint = m_mod;
	if (m_mod == C_0MOD3) 
		printf("The weight of the minimum weight codeword satisfies 0 mod 3 congruence\n");
	fflush(stdout);
	info.matrices_req = 1;
	
	/* Obtain the first lower-bound */
	info.known_lower_bound = lower_bound;
	info.lower_bound = (unsigned int)ceil(((double)G.cols/(double)G.rows)*2.0);

	/* Information weight 1 */
	printf("Enumerating codewords with information weight 1 (w=1)\n"); fflush(stdout);
	info.upper_bound = G.cols; 
	j = packedG.dimension;
	do { --j;
		sum = 0; l = packedG.nBlocks;
		do { --l;
			sum += (popcount(packedG.mat[0][j][l].v1) + popcount(packedG.mat[0][j][l].v2));
		} while (l);
		if (sum < info.upper_bound) {
			info.upper_bound = sum;
			printf("    Found new minimum weight %d\n", info.upper_bound); fflush(stdout);
			if (info.upper_bound <= info.known_lower_bound) break;
		}
	} while (j);
	if (sum <= info.known_lower_bound) {
		printf("The known lower-bound is met, enumeration completed.\n");
		info.upper_bound = sum;
		goto completed;
	}
	
	/* Update progress information */
	info.info_weight_completed = 1;
	cyclic_update_info_gf3(&packedG, &info);
	
	printf("Number of matrices required for codeword enumeration %d\n", info.matrices_req);
	printf("Completed w= 1, %d codewords enumerated, lower-bound %d, upper-bound %d\n", 
			packedG.dimension, info.displayed_lower_bound, info.upper_bound); fflush(stdout);
	if (info.displayed_lower_bound >= info.upper_bound) goto completed;
	printf("Termination expected with information weight %d\n", info.max_info_weight_req);
	printf("-----------------------------------------------------------------------------\n");
	
	/* The following function is executed for higher minimum weight */
	__cyclic_mindist_gf3(&packedG, &info);
	
	/*------------------------ end of core computation ----------------------------*/

completed:	
	/* Deallocating memory */	
	for (j=0; j<G.rows; j++) free(packedG.mat[0][j]);
	free(packedG.mat[0]);
	free(packedG.mat);
	clear_gf3(&gf);
	
	return info.upper_bound;
}

/* Minimum weight enumeration function for information weight >= 2 */
void __mindist_gf3(PACKED_MATRIX_GF3 *G, INFO *info) {
#define EVALUATE_MINIMUM_WEIGHT_GF3	{\
		memset(a, 0, m * sizeof(short));\
		f[m] = m; j = m; do { --j; f[j] = j; } while (j);\
		while (1) {\
			l=info->matrices_req; do { --l;\
				steps++;\
				i = G->nBlocks; w = 0;\
				do { --i;\
					/* FIXME: (optimisation)                          */\
					/* There must a clever (faster) way of doing this */\
					/* by exploiting the revolving door property      */\
					c[l][i] = G2[0][l][v[1]][i];\
					j = m; do { --j;\
						add_gf3_vec(c[l][i], G2[a[j]][l][v[j+2]][i], c[l][i]);\
					} while (j);\
					w += (popcount(c[l][i].v1) + popcount(c[l][i].v2));\
				} while (i);\
				if (w < info->upper_bound) {\
					info->upper_bound = w;\
					printf("   Found new minimum weight %d\n", w); fflush(stdout);\
					if (w <= info->known_lower_bound) goto lower_bound_met;\
				}\
			} while (l);\
			j = f[0]; f[0] = 0;\
			if (!(j-m)) break;\
			else { f[j] = f[j+1]; f[j+1] = j+1; }\
			a[j] = 1 - a[j];\
		}\
	}
	double steps;
	short m, iw, top, nMat;
	register short i, j, l, w;
	register GF3_VEC **c;
	short *v, *s, *a, *f;
	packed_t t1, t2;
	
	/* G2 contains a set of generator matrices of G->nFullRankMatrices disjoint */
	/* information sets. For each information set, G2 contains (q-1) matrices,  */
	/* where the identity element of each is non zeros of GF(q)                 */
	GF3_VEC ****G2;
	nMat = info->matrices_req;
	G2 = (GF3_VEC ****) malloc(2 * sizeof(GF3_VEC ***));
	G2[0] = G->mat;	/* the first one (identity = 1) points to 'G->mat' */
	G2[1] = (GF3_VEC ***) malloc(nMat * sizeof(GF3_VEC **));
	for (i=0; i<nMat; i++) {
		G2[1][i] = (GF3_VEC **) malloc(G->dimension * sizeof(GF3_VEC *));
		for (j=0; j<G->dimension; j++) {
			G2[1][i][j] = (GF3_VEC *) malloc(G->nBlocks * sizeof(GF3_VEC));
			for (l=0; l<G->nBlocks; l++) {
				G2[1][i][j][l].v1 = G2[0][i][j][l].v2;
				G2[1][i][j][l].v2 = G2[0][i][j][l].v1;
			}
		}
	}
	
	w = top = 0;
	c = (GF3_VEC **)malloc(nMat * sizeof(GF3_VEC*));
	l = nMat; do { --l; 
		c[l] = (GF3_VEC *)malloc(G->nBlocks * sizeof(GF3_VEC)); 
	} while (l);	
	for (iw=2;;iw++) {	/* starting from information weight 2 */
		if (iw == info->max_info_weight_req) info->matrices_req = info->ith_matrix;
		printf("Enumerating codewords with information weight %d (w=%d) using %d matrices\n", 
				iw, iw, info->matrices_req);
		fflush(stdout);
		steps = 0;
		
		m = iw - 1;
		v = (short *) malloc((iw+2)*sizeof(short));
		s = (short *) malloc((iw+2)*sizeof(short));
		a = (short *) malloc(iw *sizeof(short));
		f = (short *) malloc((iw+1)*sizeof(short));
		
		if ( !(iw & 1) ) {
			v[iw + 1] = G->dimension; v[iw] = iw - 1;
			if (iw < G->dimension) top = iw;
		} else {
			v[iw] = G->dimension - 1;
			if (iw < G->dimension) top = iw - 1;
		}
		v[1] = s[iw] = 0;
		for (i=2; i<iw; ++i) { v[i] = i-1; s[i] = i+1; }

		/* first combination */
		EVALUATE_MINIMUM_WEIGHT_GF3;
		
		/* main loop to generate all other combinations */
		while (top != 0) {
			if (top == 2) {	/* special handling far v[1] and v[2] */
				top = s[2]; s[2] = 3;
				do {
					v[1] = v[2]; ++v[2];
					EVALUATE_MINIMUM_WEIGHT_GF3;
					do {
						--v[1];
						EVALUATE_MINIMUM_WEIGHT_GF3;
					} while (v[1]);
				} while ( !(v[2] == v[3] - 1) );
			} else {
				if (top & 0x1) {
					--v[top];
					if (v[top] > top - 1) {
						top = top - 1; v[top] = top - 1;
					} else {
						v[top-1] = top - 2; i = top;
						top = s[top]; s[i] = i + 1;
					}
				} else {
					v[top-1] = v[top]; ++v[top];
					if (v[top] == v[top+1] - 1) {
						s[top-1] = s[top]; s[top] = top + 1;
					}
					top -= 2;
				}
				EVALUATE_MINIMUM_WEIGHT_GF3;
			}
		}

		/* Update progress information */
		info->info_weight_completed = iw;
		update_info_gf3(G, info);
		
		printf("Completed w=%2d, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
				iw, steps, info->displayed_lower_bound, info->upper_bound); fflush(stdout);
lower_bound_met:
		free(a);
		free(f);
		free(v);
		free(s);
		if (w <= info->known_lower_bound) {
			printf("The known lower-bound is met, enumeration completed.\n");
			printf("-----------------------------------------------------------------------------\n");
		   	info->upper_bound = w;
			for (l=0; l<nMat; l++) {
				for (i=0; i<G->dimension; i++) free(G2[1][l][i]);
				free(G2[1][l]);
				free(c[l]); 
			}
			free(G2[1]); free(G2);
			return;	
		}
		if (info->displayed_lower_bound >= info->upper_bound) break;
		printf("Termination expected with information weight %d at matrix %d\n",
				info->max_info_weight_req, info->ith_matrix);
		printf("-----------------------------------------------------------------------------\n");
	}
	printf("-----------------------------------------------------------------------------\n");
	for (l=0; l<nMat; l++) {
		for (i=0; i<G->dimension; i++) free(G2[1][l][i]);
		free(c[l]); free(G2[1][l]);
	}
	free(G2[1]); free(G2);
	free(c);
}

/* Cyclic code: minimum weight enumeration function for information weight >= 2 */
void __cyclic_mindist_gf3(PACKED_MATRIX_GF3 *G, INFO *info) {
#define EVALUATE_CYCLIC_MINIMUM_WEIGHT_GF3	{\
		memset(a, 0, m * sizeof(short));\
		f[m] = m; j = m; do { --j; f[j] = j; } while (j);\
		while (1) {\
			steps++;\
			i = G->nBlocks; w = 0;\
			do { --i;\
				/* FIXME: (optimisation)                          */\
				/* There must a clever (faster) way of doing this */\
				/* by exploiting the revolving door property      */\
				c[i] = G2[0][0][v[1]][i];\
				j = m; do { --j; add_gf3_vec(c[i], G2[a[j]][0][v[j+2]][i], c[i]); } while (j);\
				w += (popcount(c[i].v1) + popcount(c[i].v2));\
			} while (i);\
			if (w < info->upper_bound) {\
				info->upper_bound = w;\
				printf("   Found new minimum weight %d\n", w); fflush(stdout);\
				if (w <= info->known_lower_bound) goto lower_bound_met;\
			}\
			j = f[0]; f[0] = 0;\
			if (!(j-m)) break;\
			else { f[j] = f[j+1]; f[j+1] = j+1; }\
			a[j] = 1 - a[j];\
		}\
	}
	double steps;
	short m, iw, top;
	register short i, j, l, w;
	register GF3_VEC *c;
	packed_t t1, t2;
	short *v, *s, *a, *f;

	/* G2 contains a set of generator matrices of G->nFullRankMatrices disjoint */
	/* information sets. For each information set, G2 contains (q-1) matrices,  */
	/* where the identity element of each is non zeros of GF(q)                 */
	GF3_VEC ****G2;
	G2 = (GF3_VEC ****) malloc(2 * sizeof(GF3_VEC ***));
	G2[0] = G->mat;	/* the first one (identity = 1) points to 'G->mat' */
	G2[1] = (GF3_VEC ***) malloc(1 * sizeof(GF3_VEC **));
	G2[1][0] = (GF3_VEC **) malloc(G->dimension * sizeof(GF3_VEC *));
	for (j=0; j<G->dimension; j++) {
		G2[1][0][j] = (GF3_VEC *) malloc(G->nBlocks * sizeof(GF3_VEC));
		for (l=0; l<G->nBlocks; l++) {
			G2[1][0][j][l].v1 = G2[0][0][j][l].v2;
			G2[1][0][j][l].v2 = G2[0][0][j][l].v1;
		}
	}
	
	w = top = 0;
	c = (GF3_VEC *)malloc(G->nBlocks * sizeof(GF3_VEC)); 
	for (iw=2;;iw++) {	/* starting from information weight 2 */
		printf("Enumerating codewords with information weight %d (w=%d) using 1 matrix\n", 
				iw, iw);
		fflush(stdout);
		steps = 0;
		
		m = iw - 1;
		v = (short *) malloc((iw+2)*sizeof(short));
		s = (short *) malloc((iw+2)*sizeof(short));
		a = (short *) malloc(iw *sizeof(short));
		f = (short *) malloc((iw+1)*sizeof(short));
		
		if ( !(iw & 1) ) {
			v[iw + 1] = G->dimension; v[iw] = iw - 1;
			if (iw < G->dimension) top = iw;
		} else {
			v[iw] = G->dimension - 1;
			if (iw < G->dimension) top = iw - 1;
		}
		v[1] = s[iw] = 0;
		for (i=2; i<iw; ++i) { v[i] = i-1; s[i] = i+1; }

		/* first combination */
		EVALUATE_CYCLIC_MINIMUM_WEIGHT_GF3;
		
		/* main loop to generate all other combinations */
		while (top != 0) {
			if (top == 2) {	/* special handling far v[1] and v[2] */
				top = s[2]; s[2] = 3;
				do {
					v[1] = v[2]; ++v[2];
					EVALUATE_CYCLIC_MINIMUM_WEIGHT_GF3;
					do {
						--v[1];
						EVALUATE_CYCLIC_MINIMUM_WEIGHT_GF3;
					} while (v[1]);
				} while ( !(v[2] == v[3] - 1) );
			} else {
				if (top & 0x1) {
					--v[top];
					if (v[top] > top - 1) {
						top = top - 1; v[top] = top - 1;
					} else {
						v[top-1] = top - 2; i = top;
						top = s[top]; s[i] = i + 1;
					}
				} else {
					v[top-1] = v[top]; ++v[top];
					if (v[top] == v[top+1] - 1) {
						s[top-1] = s[top]; s[top] = top + 1;
					}
					top -= 2;
				}
				EVALUATE_CYCLIC_MINIMUM_WEIGHT_GF3;
			}
		}

		/* Update progress information */
		info->info_weight_completed = iw;
		cyclic_update_info_gf3(G, info);
		
		printf("Completed w=%2d, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
				iw, steps, info->displayed_lower_bound, info->upper_bound); fflush(stdout);
lower_bound_met:
		free(v);
		free(s);
		free(a);
		free(f);
		if (w <= info->known_lower_bound) {
			printf("The known lower-bound is met, enumeration completed.\n");
			printf("-----------------------------------------------------------------------------\n");
		   	info->upper_bound = w;
			free(c);
			for (i=0; i<G->dimension; i++) free(G2[1][0][i]);
			free(G2[1][0]); free(G2[1]); free(G2);
			return;	
		}
		if (info->displayed_lower_bound >= info->upper_bound) break;
		printf("Termination expected with information weight %d\n",
				info->max_info_weight_req);
		printf("-----------------------------------------------------------------------------\n");
	}
	printf("-----------------------------------------------------------------------------\n");
	free(c);
	for (i=0; i<G->dimension; i++) free(G2[1][0][i]);
	free(G2[1][0]); free(G2[1]); free(G2);
}

/* Update INFO structure, which contains various information on the */
/* current progress of enumeration.                                 */
void update_info_gf3(PACKED_MATRIX_GF3 *G, INFO *info) {
	bool end;
	short i, j, l, d, w;
	
	/* Estimate the number of matrices required to complete enumeration */
	info->matrices_req = 0;
	for (w=0,i=1;;i++) {
		w = (i+1) * G->nFullRankMatrices;
		info->matrices_req = G->nFullRankMatrices;
		for (j=G->nFullRankMatrices; j<G->nMatrices; j++) {
			l = i - (G->dimension - G->rank[j]) + 1;
			if (l > 0) { w += l; info->matrices_req++; }
		}
		end = false;
		switch (info->weight_constraint) {
			case C_0MOD3: if (ROUND_0_MOD_3(w) >= info->upper_bound) end = true; break;
			default: if (w >= info->upper_bound) end = true;
		}
		if (end) break;
	}

	/* Estimate the minimum distance lower bound after current enumeration */
	if (info->info_weight_completed == 1) /* required for safety */
		info->max_info_weight_req = G->dimension;	
	if (info->info_weight_completed < info->max_info_weight_req) {
		info->lower_bound = (info->info_weight_completed + 1) * G->nFullRankMatrices;
		for (j=G->nFullRankMatrices; j<G->nMatrices; j++) {
			l = info->info_weight_completed - (G->dimension - G->rank[j]) + 1;
			if (l > 0) info->lower_bound += l;	
		}
	} else {	/* last information weight in enumeration */
		for (j=0; j<info->ith_matrix; j++) {
			if (j < G->nFullRankMatrices) info->lower_bound++;
			else {
				l = i - (G->dimension - G->rank[j]) + 1;
				if (l > 0) info->lower_bound++;
			}
		}
	}

	/* lower-bound information to display, this value could be different */
	/* from the actual lower-bound if the code satisfies some weight     */
	/* constraint, i.e. 0 mod 3 (self-orthogonal ternay code).           */
	switch (info->weight_constraint) {
		case C_0MOD3: info->displayed_lower_bound = ROUND_0_MOD_3(info->lower_bound); break;
		default: info->displayed_lower_bound = info->lower_bound;
	}
	
	/* Estimate the maximum information weight required */
	d = 0;
	w = info->lower_bound;
	for (i=info->info_weight_completed+1;;i++) {
		for (j=0; j<G->nMatrices; j++) {
			if (j < G->nFullRankMatrices) 
				l = 1;	/* this is a trick to reduce the number of lines of codes */
			else 
				l = i - (G->dimension - G->rank[j]) + 1;
			if (l > 0) {
				w++;
				switch (info->weight_constraint) {
					case C_0MOD3: d = ROUND_0_MOD_3(w); break;
					default: d = w;
				}
				if (d >= info->upper_bound) { info->ith_matrix = j + 1; break; }
			}
		}
		if (d >= info->upper_bound) { info->max_info_weight_req = i; break; }
	}
}			

/* Update INFO structure, which contains various information on the */
/* current progress of enumeration.                                 */
void cyclic_update_info_gf3(PACKED_MATRIX_GF3 *G, INFO *info) {
	short i, d, w;
	
	/* Estimate the minimum distance lower bound after current enumeration */
	info->lower_bound = (info->info_weight_completed + 1) * G->nFullRankMatrices;
	info->lower_bound = (unsigned int)
		ceil(((double)G->block_length/(double)G->dimension)*((double)info->info_weight_completed+1.0));

	/* lower-bound information to display, this value could be different */
	/* from the actual lower-bound if the code satisfies some weight     */
	/* constraint, i.e. 0 mod 3 (self-orthogonal ternary code).          */
	switch (info->weight_constraint) {
		case C_0MOD3: info->displayed_lower_bound = ROUND_0_MOD_3(info->lower_bound); break;
		default: info->displayed_lower_bound = info->lower_bound;
	}
	
	/* Estimate the maximum information weight required */
	d = 0;
	for (i=info->info_weight_completed+1;;i++) {
		w = (unsigned int)
			ceil(((double)G->block_length/(double)G->dimension)*((double)i+1.0));
		switch (info->weight_constraint) {
			case C_0MOD3: d = ROUND_0_MOD_3(w); break;
			default: d = w;
		} 
		if (d >= info->upper_bound) { info->max_info_weight_req = i; break; }
	}
}

/* Initialise GF subtraction and division tables */
void init_gf3(GF3 *gf) {
	int i;
	
	gf->sub = (short **)malloc(3 * sizeof(short *));
	for (i=0; i<3; i++) gf->sub[i] = (short *)malloc(3*sizeof(short));
	gf->sub[0][0] = 0; gf->sub[0][1] = 2; gf->sub[0][2] = 1;
	gf->sub[1][0] = 1; gf->sub[1][1] = 0; gf->sub[1][2] = 2;
	gf->sub[2][0] = 2; gf->sub[2][1] = 1; gf->sub[2][2] = 0;
	
	gf->div = (short **)malloc(3 * sizeof(short int *));
	for (i=0; i<3; i++) gf->div[i] = (short *)malloc(3*sizeof(short));
	gf->div[0][0] = 3; gf->div[0][1] = 0; gf->div[0][2] = 0;
	gf->div[1][0] = 3; gf->div[1][1] = 1; gf->div[1][2] = 2;
	gf->div[2][0] = 3; gf->div[2][1] = 2; gf->div[2][2] = 1;
}

/* Deallocation */
void clear_gf3(GF3 *gf) {
	int i;
	for (i=0; i<3; i++) {
		free(gf->sub[i]);
		free(gf->div[i]);
	}
	free(gf->sub);
	free(gf->div);
}

/* Convert a ternary matrix into packed integer format */
GF3_VEC **to_packed_integer_gf3(MATRIX *G, int nBlocks) {
	int i, j;
	GF3_VEC **M;
	
	M = (GF3_VEC **)malloc(G->rows * sizeof(GF3_VEC *));
	for (i=0; i<G->rows; i++) {
		M[i] = (GF3_VEC *)malloc(nBlocks * sizeof(GF3_VEC));
		memset(M[i], 0, nBlocks * sizeof(GF3_VEC));
		for (j=0; j<nBlocks; j++) M[i][j].v1 = M[i][j].v2 = ZERO;
		for (j=0; j<G->cols; j++) {
			switch (G->m[i][j]) {
				case 1 : M[i][j >> LOG2].v2 |= (ONE << (j & MOD)); break;
				case 2 : M[i][j >> LOG2].v1 |= (ONE << (j & MOD)); break;
				default: break;
			}
		}
	}
	return M;
}

/* Print out a packed GF3 matrix in unpacked format */
void mat_packed_print_gf3(GF3_VEC **M, int nBlocks, int dim, int length) {
	unsigned int r, i, j;
	packed_t u1, u2;
	for (r=0; r<dim; r++) {
		for (i=0; i<nBlocks-1; i++) {
			for (j=0; j<BITSIZE; j++) {
				u1 = M[r][i].v1 & (ONE << j);
				u2 = M[r][i].v2 & (ONE << j);
				if ((!u1) && (!u2)) printf("0");
				else if ((!u1) && u2) printf("1");
				else if (u1 && !u2) printf("2");
				else printf("?");
			}
		}
		for (i=nBlocks-1,j=0; j<length-(BITSIZE*(nBlocks-1)); j++) {
			u1 = M[r][i].v1 & (ONE << j);
			u2 = M[r][i].v2 & (ONE << j);
			if ((!u1) && (!u2)) printf("0");
			else if ((!u1) && u2) printf("1");
			else if (u1 && !u2) printf("2");
			else printf("?");
		}
		printf("\n");
	}
}

/* gauss jordan - turn matrix M into reduced-echelon form at position 'start' */
int gf3_gauss_jordan(GF3 *gf, MATRIX *M, int start) {
	bool found;
	int i, r, c, pivot, swap;
	for (c=0; c<M->rows; ++c) {		/* diagonalise the element from col=1 to rows */
		if (c+start >= M->cols) return c;
		if (!M->m[c][c+start]) {	/* pivot is zero, do row swapping */
			for (found=false,r=c+1; r<M->rows; ++r) { if (M->m[r][c+start]) { found=true; break; } }
			if (found) {
				for (i=0; i<M->cols; ++i) { swap=M->m[r][i]; M->m[r][i]=M->m[c][i]; M->m[c][i]=swap; }
			} else {			/* row swapping failed, do column swapping */
				for (found=false,i=start+c+1; i<M->cols; ++i) {
					for (r=c; r<M->rows; ++r) { if (M->m[r][i]) { found=true; break; } }
					if (found) break;
				}
				if (!found) return c;
				for (pivot=i,i=0; i<M->cols; ++i) { swap=M->m[r][i]; M->m[r][i]=M->m[c][i]; M->m[c][i]=swap; }
				for (r=0; r<M->rows; ++r) { 
					swap=M->m[r][pivot]; M->m[r][pivot]=M->m[r][c+start]; M->m[r][c+start]=swap; 
				}
			}
		}
		if (M->m[c][c+start]>1) {	/* ensure the diagonal element is 1 */
			for (pivot=M->m[c][c+start],i=0; i<M->cols; ++i) 
				M->m[c][i] = divide_gf3(gf, M->m[c][i], pivot);
		}
		for (r=0; r<M->rows; ++r) {	/* zero the whole rows at column c, except at row c (diagonalisation) */
			if (r==c) continue;
			if (M->m[r][c+start]) {
				pivot = M->m[r][c+start];
				for (i=0; i<M->cols; ++i) 
					M->m[r][i] = subtract_gf3(gf, divide_gf3(gf, M->m[r][i], pivot), M->m[c][i]);
			}
		}
	}
	/* ensure that the diagonal element is 1 */
	for (c=0; c<M->rows; ++c) {
		if (M->m[c][c+start]>1) {
			for (pivot=M->m[c][c+start],i=0; i<M->cols; ++i) 
				M->m[c][i] = divide_gf3(gf, M->m[c][i], pivot);
		}
	}
	return c;
}
