/*
 * minimum-weight-gf2.c
 *
 * Minimum Hamming weight computation for codes over GF(2)
 * The core of computation is in this src file
 *
 * NOTES:
 *  ¯ The GF(2) vectors are represented in packed long integer
 *    format. This long integer is either 32-bit or 64-bit,
 *    depending on the machine architecture, see config.h
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
#include "minimum-weight-gf2.h"
#include "popcount.h"
#include "config.h"
#include "types.h"

/*--------- Some useful macros for updating upper-bound ---------*/
#define ROUND_0_MOD_2(d)	(((int) ceil((double)d/2.0))*2)	/* (singly) even code */
#define ROUND_1_MOD_2(d)	((d & 0x1) ? d : d+1)
#define ROUND_0_MOD_4(d)	(((int) ceil((double)d/4.0))*4)	/* doubly-even code */
#define ROUND_3_MOD_4(d)	((d & 0x11)	? ROUND_0_MOD_4(d+1) : ROUND_0_MOD_4(d))

/*-------------------- Function prototypes ----------------------*/
packed_t **to_packed_integer_gf2(MATRIX *G, int nBlocks);
int  gf2_gauss_jordan(MATRIX *M, int start);
void mat_packed_print_gf2(packed_t **M, int nBlocks, int dim, int length);
void update_info_gf2(PACKED_MATRIX_GF2 *G, INFO *info);
void cyclic_update_info_gf2(PACKED_MATRIX_GF2 *G, INFO *info);
void __mindist_gf2(PACKED_MATRIX_GF2 *G, INFO *info);
void __cyclic_mindist_gf2(PACKED_MATRIX_GF2 *G, INFO *info);
/*---------------------------------------------------------------*/

/* Return the minimum weight of a general binary linear code */
int mindist_gf2(MATRIX G, mod_t m_mod, int lower_bound) {
	int i, j, l, rank, pos;
	double steps;
	unsigned int sum=0;
	PACKED_MATRIX_GF2 packedG;
	INFO info;

	/* 
	 * Knowing G, now build an array of generator matrices with
	 * disjoint information sets. These matrices are stored in
	 * packed integer format
	 * 
	 */
	j = (G.cols - G.rows) + 1;	/* maximum possible number of matrices */
	packedG.mat = (packed_t ***)malloc(j * sizeof(packed_t **));
	packedG.rank= (unsigned short *)malloc(j * sizeof(unsigned short));
	packedG.dimension = G.rows;
	packedG.block_length = G.cols;
	packedG.nMatrices = packedG.nFullRankMatrices = 0;
	packedG.nBlocks = (!(G.cols % BITSIZE)) ? (G.cols / BITSIZE) : (G.cols / BITSIZE)+1;
	for (i=0,pos=0;;i++) {
		if (pos >= G.cols) break;
		rank = gf2_gauss_jordan(&G, pos);	/* what is the rank at column 'pos'? */
		if (!rank) {
			pos++;
			continue;
		}
		
		/* Convert the reduced echelon matrix into packed integer format */	
		packedG.mat[i] = to_packed_integer_gf2(&G, packedG.nBlocks);
		
		packedG.rank[i] = rank;
		pos += rank;
		packedG.nMatrices++;
		if (rank == G.rows) packedG.nFullRankMatrices++;
	}

	/*---------------------- core computation starts here -------------------------*/
	
	printf("[%d,%d] linear code over GF(2) - minimum weight evaluation\n", G.cols, G.rows);
	printf("Known lower-bound: %d\n", lower_bound);
	printf("There are %d generator matrices, ranks : ", packedG.nMatrices);
	for (i=0; i<packedG.nMatrices; i++) printf("%d ", packedG.rank[i]); printf("\n");
	info.weight_constraint = m_mod;
	switch (m_mod) {
		case C_0MOD2:
			printf("The weight of the minimum weight codeword satisfies 0 mod 2 congruence\n"); break;
		case C_1MOD2:
			printf("The weight of the minimum weight codeword satisfies 1 mod 2 congruence\n"); break;
		case C_3MOD4:
			printf("The weight of the minimum weight codeword satisfies 3 mod 4 congruence\n"); break;
		case C_0MOD4:
			printf("The weight of the minimum weight codeword satisfies 0 mod 4 congruence\n"); break;
		default: break;
	}
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
				sum += popcount(packedG.mat[i][j][l]);
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
	update_info_gf2(&packedG, &info);
	
	printf("Number of matrices required for codeword enumeration %d\n", info.matrices_req);
	printf("Completed w= 1, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
			steps, info.displayed_lower_bound, info.upper_bound); fflush(stdout);
	if (info.displayed_lower_bound >= info.upper_bound) goto completed;
	printf("Termination expected with information weight %d at matrix %d\n",
			info.max_info_weight_req, info.ith_matrix);
	printf("-----------------------------------------------------------------------------\n");
	
	/* The following function is executed for higher minimum weight */
	__mindist_gf2(&packedG, &info);
	
	/*------------------------ end of core computation ----------------------------*/

completed:	
	/* Deallocating memory */	
	for (i=0; i<packedG.nMatrices; i++) {
		for (j=0; j<G.rows; j++) free(packedG.mat[i][j]);
		free(packedG.mat[i]);
	}
	free(packedG.mat);
	
	return info.upper_bound;
}

/* Return the minimum weight of a binary cyclic code */
int cyclic_mindist_gf2(MATRIX G, mod_t m_mod, int lower_bound) {
	int j, l, rank;
	unsigned int sum=0;
	PACKED_MATRIX_GF2 packedG;
	INFO info;

	/* 
	 * For cyclic code, only one information set is required, so
	 * only one generator matrix (in packed integer format) is
	 * needed.
	 * 
	 */
	j = 1;	/* only one generator matrix */
	packedG.mat = (packed_t ***)malloc(j * sizeof(packed_t **));
	packedG.rank= (unsigned short *)malloc(j * sizeof(unsigned short));
	packedG.dimension = G.rows;
	packedG.block_length = G.cols;
	packedG.nMatrices = j; 
	packedG.nFullRankMatrices = 1 + ((G.cols - G.rows)/G.rows);
	packedG.nBlocks = (!(G.cols % BITSIZE)) ? (G.cols / BITSIZE) : (G.cols / BITSIZE)+1;
	rank = gf2_gauss_jordan(&G, 0);
	if (!rank) {
		fprintf(stderr, "ERROR: rank is 0\n\n"); return -1;
	}
		
	/* Convert the reduced echelon matrix into packed integer format */	
	packedG.mat[0] = to_packed_integer_gf2(&G, packedG.nBlocks);
		
	packedG.rank[0] = rank;
	if (rank != G.rows) {
		fprintf(stderr, "ERROR: full rank generator matrix cannot be obtained.\n");
		fprintf(stderr, "       Please provide a full-rank generator matrix as an input.\n\n");
		return -1;
	}

	/*---------------------- core computation starts here -------------------------*/
	
	printf("[%d,%d] cyclic code over GF(2) - minimum weight evaluation\n", G.cols, G.rows);
	printf("Known lower-bound: %d\n", lower_bound);
	info.weight_constraint = m_mod;
	switch (m_mod) {
		case C_0MOD2:
			printf("The weight of the minimum weight codeword satisfies 0 mod 2 congruence\n"); break;
		case C_1MOD2:
			printf("The weight of the minimum weight codeword satisfies 1 mod 2 congruence\n"); break;
		case C_3MOD4:
			printf("The weight of the minimum weight codeword satisfies 3 mod 4 congruence\n"); break;
		case C_0MOD4:
			printf("The weight of the minimum weight codeword satisfies 0 mod 4 congruence\n"); break;
		default: break;
	}
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
			sum += popcount(packedG.mat[0][j][l]);
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
	cyclic_update_info_gf2(&packedG, &info);
	
	printf("Number of matrices required for codeword enumeration %d\n", info.matrices_req);
	printf("Completed w= 1, %d codewords enumerated, lower-bound %d, upper-bound %d\n", 
			packedG.dimension, info.displayed_lower_bound, info.upper_bound); fflush(stdout);
	if (info.displayed_lower_bound >= info.upper_bound) goto completed;
	printf("Termination expected with information weight %d\n", info.max_info_weight_req);
	printf("-----------------------------------------------------------------------------\n");
	
	/* The following function is executed for higher minimum weight */
	__cyclic_mindist_gf2(&packedG, &info);
	
	/*------------------------ end of core computation ----------------------------*/

completed:	
	/* Deallocating memory */	
	for (j=0; j<G.rows; j++) free(packedG.mat[0][j]);
	free(packedG.mat[0]);
	free(packedG.mat);
	
	return info.upper_bound;
}

/* Minimum weight enumeration function for information weight >= 2 */
void __mindist_gf2(PACKED_MATRIX_GF2 *G, INFO *info) {
#define EVALUATE_MINIMUM_WEIGHT1	{\
		l=info->matrices_req; do { --l;\
			steps++;\
			i = G->nBlocks; w = 0;\
			do { --i;\
				c[l][i] = G->mat[l][v[1]][i];\
				j = m; do { --j; c[l][i] ^= G->mat[l][v[j+2]][i]; } while (j);\
				w += popcount(c[l][i]);\
			} while (i);\
			if (w < info->upper_bound) {\
				info->upper_bound = w;\
				printf("   Found new minimum weight %d\n", w); fflush(stdout);\
				if (w <= info->known_lower_bound) goto lower_bound_met;\
			}\
		} while (l);\
	}
#define EVALUATE_MINIMUM_WEIGHT		{\
		l=info->matrices_req; do { --l;\
			steps++;\
			i = G->nBlocks; w = 0;\
			do { --i;\
				/* Property of revolving door algorithm:       */\
				/* In two consecutive combination pattern,     */\
				/* exactly one element In and one element Out. */\
				c[l][i] ^= (G->mat[l][ Out ][i] ^ G->mat[l][ In ][i]);\
				w += popcount(c[l][i]);\
			} while (i);\
			if (w < info->upper_bound) {\
				info->upper_bound = w;\
				printf("   Found new minimum weight %d\n", w); fflush(stdout);\
				if (w <= info->known_lower_bound) goto lower_bound_met;\
			}\
		} while (l);\
	}
	double steps;
	short m, iw, top, In, Out, nMat;
	register short i, j, l, w;
	register packed_t **c;
	short *v, *s;

	w = top = 0;
	nMat = info->matrices_req;
	c = (packed_t **)malloc(nMat * sizeof(packed_t*));
	l = nMat; do { --l; 
		c[l] = (packed_t *)malloc(G->nBlocks * sizeof(packed_t)); 
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
		EVALUATE_MINIMUM_WEIGHT1;
		
		/* main loop to generate all other combinations */
		while (top != 0) {
			if (top == 2) {	/* special handling far v[1] and v[2] */
				top = s[2]; s[2] = 3;
				do {
					Out = v[1];
					v[1] = v[2]; ++v[2];
					In = v[2];
					EVALUATE_MINIMUM_WEIGHT;
					do {
						Out = v[1];
						--v[1];
						In = v[1];
						EVALUATE_MINIMUM_WEIGHT;
					} while (v[1]);
				} while ( !(v[2] == v[3] - 1) );
			} else {
				if (top & 0x1) {
					Out = v[top];
					--v[top];
					if (v[top] > top - 1) {
						top = top - 1; v[top] = top - 1;
						In = v[top];
					} else {
						v[top-1] = top - 2; i = top;
						In = v[top-1];
						top = s[top]; s[i] = i + 1;
					}
				} else {
					Out = v[top-1];
					v[top-1] = v[top]; ++v[top];
					In = v[top];
					if (v[top] == v[top+1] - 1) {
						s[top-1] = s[top]; s[top] = top + 1;
					}
					top -= 2;
				}
				EVALUATE_MINIMUM_WEIGHT;
			}
		}

		/* Update progress information */
		info->info_weight_completed = iw;
		update_info_gf2(G, info);
		
		printf("Completed w=%2d, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
				iw, steps, info->displayed_lower_bound, info->upper_bound); fflush(stdout);
lower_bound_met:
		free(v);
		free(s);
		if (w <= info->known_lower_bound) {
			printf("The known lower-bound is met, enumeration completed.\n");
			printf("-----------------------------------------------------------------------------\n");
		   	info->upper_bound = w;
			for (l=0; l<nMat; l++) free(c[l]);
			free(c);
			return;	
		}
		if (info->displayed_lower_bound >= info->upper_bound) break;
		printf("Termination expected with information weight %d at matrix %d\n",
				info->max_info_weight_req, info->ith_matrix);
		printf("-----------------------------------------------------------------------------\n");
	}
	printf("-----------------------------------------------------------------------------\n");
	for (l=0; l<nMat; l++) free(c[l]);
	free(c);
}

/* Cyclic code: minimum weight enumeration function for information weight >= 2 */
void __cyclic_mindist_gf2(PACKED_MATRIX_GF2 *G, INFO *info) {
#define EVALUATE_CYCLIC_MINIMUM_WEIGHT1	{\
		steps++;\
		i = G->nBlocks; w = 0;\
		do { --i;\
			c[i] = G->mat[0][v[1]][i];\
			j = m; do { --j; c[i] ^= G->mat[0][v[j+2]][i]; } while (j);\
			w += popcount(c[i]);\
		} while (i);\
		if (w < info->upper_bound) {\
			info->upper_bound = w;\
			printf("   Found new minimum weight %d\n", w); fflush(stdout);\
			if (w <= info->known_lower_bound) goto lower_bound_met;\
		}\
	}
#define EVALUATE_CYCLIC_MINIMUM_WEIGHT		{\
		steps++;\
		i = G->nBlocks; w = 0;\
		do { --i;\
			/* Property of revolving door algorithm:       */\
			/* In two consecutive combination pattern,     */\
			/* exactly one element In and one element Out. */\
			c[i] ^= (G->mat[0][ Out ][i] ^ G->mat[0][ In ][i]);\
			w += popcount(c[i]);\
		} while (i);\
		if (w < info->upper_bound) {\
			info->upper_bound = w;\
			printf("   Found new minimum weight %d\n", w); fflush(stdout);\
			if (w <= info->known_lower_bound) goto lower_bound_met;\
		}\
	}
	double steps;
	short m, iw, top, In, Out;
	register short i, j, w;
	register packed_t *c;
	short *v, *s;

	w = top = 0;
	c = (packed_t *)malloc(G->nBlocks * sizeof(packed_t)); 
	for (iw=2;;iw++) {	/* starting from information weight 2 */
		printf("Enumerating codewords with information weight %d (w=%d) using 1 matrix\n", 
				iw, iw);
		fflush(stdout);
		steps = 0;
		
		m = iw - 1;
		v = (short *) malloc((iw+2)*sizeof(short));
		s = (short *) malloc((iw+2)*sizeof(short));
		
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
		EVALUATE_CYCLIC_MINIMUM_WEIGHT1;
		
		/* main loop to generate all other combinations */
		while (top != 0) {
			if (top == 2) {	/* special handling far v[1] and v[2] */
				top = s[2]; s[2] = 3;
				do {
					Out = v[1];
					v[1] = v[2]; ++v[2];
					In = v[2];
					EVALUATE_CYCLIC_MINIMUM_WEIGHT;
					do {
						Out = v[1];
						--v[1];
						In = v[1];
						EVALUATE_CYCLIC_MINIMUM_WEIGHT;
					} while (v[1]);
				} while ( !(v[2] == v[3] - 1) );
			} else {
				if (top & 0x1) {
					Out = v[top];
					--v[top];
					if (v[top] > top - 1) {
						top = top - 1; v[top] = top - 1;
						In = v[top];
					} else {
						v[top-1] = top - 2; i = top;
						In = v[top-1];
						top = s[top]; s[i] = i + 1;
					}
				} else {
					Out = v[top-1];
					v[top-1] = v[top]; ++v[top];
					In = v[top];
					if (v[top] == v[top+1] - 1) {
						s[top-1] = s[top]; s[top] = top + 1;
					}
					top -= 2;
				}
				EVALUATE_CYCLIC_MINIMUM_WEIGHT;
			}
		}

		/* Update progress information */
		info->info_weight_completed = iw;
		cyclic_update_info_gf2(G, info);
		
		printf("Completed w=%2d, %.0lf codewords enumerated, lower-bound %d, upper-bound %d\n", 
				iw, steps, info->displayed_lower_bound, info->upper_bound); fflush(stdout);
lower_bound_met:
		free(v);
		free(s);
		if (w <= info->known_lower_bound) {
			printf("The known lower-bound is met, enumeration completed.\n");
			printf("-----------------------------------------------------------------------------\n");
		   	info->upper_bound = w;
			free(c);
			return;	
		}
		if (info->displayed_lower_bound >= info->upper_bound) break;
		printf("Termination expected with information weight %d\n",
				info->max_info_weight_req);
		printf("-----------------------------------------------------------------------------\n");
	}
	printf("-----------------------------------------------------------------------------\n");
	free(c);
}

/* Update INFO structure, which contains various information on the */
/* current progress of enumeration.                                 */
void update_info_gf2(PACKED_MATRIX_GF2 *G, INFO *info) {
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
			case C_0MOD2: if (ROUND_0_MOD_2(w) >= info->upper_bound) end = true; break;
			case C_1MOD2: if (ROUND_1_MOD_2(w) >= info->upper_bound) end = true; break;
			case C_3MOD4: if (ROUND_3_MOD_4(w) >= info->upper_bound) end = true; break;
			case C_0MOD4: if (ROUND_0_MOD_4(w) >= info->upper_bound) end = true; break;
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
	/* constraint such as 0 mod 2, 1 mod 2, 3 mod 4 or 0 mod 4.          */
	switch (info->weight_constraint) {
		case C_0MOD2: info->displayed_lower_bound = ROUND_0_MOD_2(info->lower_bound); break;
		case C_1MOD2: info->displayed_lower_bound = ROUND_1_MOD_2(info->lower_bound); break;
		case C_3MOD4: info->displayed_lower_bound = ROUND_3_MOD_4(info->lower_bound); break;
		case C_0MOD4: info->displayed_lower_bound = ROUND_0_MOD_4(info->lower_bound); break;
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
					case C_0MOD2: d = ROUND_0_MOD_2(w); break;
					case C_1MOD2: d = ROUND_1_MOD_2(w); break;
					case C_3MOD4: d = ROUND_3_MOD_4(w); break;
					case C_0MOD4: d = ROUND_0_MOD_4(w); break;
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
void cyclic_update_info_gf2(PACKED_MATRIX_GF2 *G, INFO *info) {
	short i, d, w;
	
	/* Estimate the minimum distance lower bound after current enumeration */
	info->lower_bound = (info->info_weight_completed + 1) * G->nFullRankMatrices;
	info->lower_bound = (unsigned int)
		ceil(((double)G->block_length/(double)G->dimension)*((double)info->info_weight_completed+1.0));

	/* lower-bound information to display, this value could be different */
	/* from the actual lower-bound if the code satisfies some weight     */
	/* constraint such as 0 mod 2, 1 mod 2, 3 mod 4, 0 mod 4.            */
	switch (info->weight_constraint) {
		case C_0MOD2: info->displayed_lower_bound = ROUND_0_MOD_2(info->lower_bound); break;
		case C_1MOD2: info->displayed_lower_bound = ROUND_1_MOD_2(info->lower_bound); break;
		case C_3MOD4: info->displayed_lower_bound = ROUND_3_MOD_4(info->lower_bound); break;
		case C_0MOD4: info->displayed_lower_bound = ROUND_0_MOD_4(info->lower_bound); break;
		default: info->displayed_lower_bound = info->lower_bound;
	}
	
	/* Estimate the maximum information weight required */
	d = 0;
	for (i=info->info_weight_completed+1;;i++) {
		w = (unsigned int)
			ceil(((double)G->block_length/(double)G->dimension)*((double)i+1.0));
		switch (info->weight_constraint) {
			case C_0MOD2: d = ROUND_0_MOD_2(w); break;
			case C_1MOD2: d = ROUND_1_MOD_2(w); break;
			case C_3MOD4: d = ROUND_3_MOD_4(w); break;
			case C_0MOD4: d = ROUND_0_MOD_4(w); break;
			default: d = w;
		}
		if (d >= info->upper_bound) { info->max_info_weight_req = i; break; }
	}
}

/* Convert a binary matrix into packed integer format */
packed_t **to_packed_integer_gf2(MATRIX *G, int nBlocks) {
	int i, j;
	packed_t **M;
	
	M = (packed_t **)malloc(G->rows * sizeof(packed_t *));
	for (i=0; i<G->rows; i++) {
		M[i] = (packed_t *)malloc(nBlocks * sizeof(packed_t));
		memset(M[i], 0, nBlocks * sizeof(packed_t));
		for (j=0; j<G->cols; j++) {
			if (G->m[i][j]) M[i][j >> LOG2] |= (ONE << (j & MOD));
		}
	}
	return M;
}

/* Print out a packed GF2 matrix in unpacked format */
void mat_packed_print_gf2(packed_t **M, int nBlocks, int dim, int length) {
	unsigned int r, i, j;
	for (r=0; r<dim; r++) {
		for (i=0; i<nBlocks-1; i++) {
			for (j=0; j<BITSIZE; j++) {
				printf("%d", (M[r][i] & (ONE << j)) ? 1 : 0);
			}
		}
		for (i=nBlocks-1,j=0; j<length-(BITSIZE*(nBlocks-1)); j++) {
			printf("%d", (M[r][i] & (ONE << j)) ? 1 : 0);
		}
		printf("\n");
	}
}

/* gauss jordan - turn matrix 'M' into reduced-echelon format at positon 'start' */
int gf2_gauss_jordan(MATRIX *M, int start) {
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
		for (r=0; r<M->rows; ++r) {	/* zero the whole rows at column c, except at row c (diagonalisation) */
			if (r==c) continue;
			if (M->m[r][c+start]) {
				pivot = M->m[r][c+start];
				for (i=0; i<M->cols; ++i) 
					M->m[r][i] = (M->m[r][i] - M->m[c][i]) & 0x1;
			}
		}
	}
	return c;
}
