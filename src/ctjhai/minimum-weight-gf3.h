/*
 * minimum-weight-gf3.h
 *
 * Minimum Hamming weight computation for codes over GF(3)
 *
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 *
 */

#ifndef _MINIMUM_WEIGHT_GF3_H
#define _MINIMUM_WEIGHT_GF3_H

#include "types.h"

#define subtract_gf3(gf,a,b)	gf->sub[a][b]
#define divide_gf3(gf,a,b)		gf->div[a][b]
/*
 * c = a + b
 * add_gf3_vec requires a declaration of "packed_t t1, t2"
 * 
 */
#define add_gf3_vec(a, b, c)	{   t1   = (a.v1 | b.v2)^(a.v2 | b.v1);\
									t2   = (a.v2 | b.v2) ^ t1;\
									c.v2 = (a.v1 | b.v1) ^ t1;\
									c.v1 = t2;\
								}
/*
 * c = a - b 
 *   = a + -b 
 *   = a + 2b
 * sub_gf3_vec requires a declaration of "packed_t t1, t2"
 * 
 */
#define sub_gf3_vec(a, b, c)	{   t1   = (a.v1 | b.v1)^(a.v2 | b.v2);\
									t2   = (a.v2 | b.v1) ^ t1;\
									c.v2 = (a.v1 | b.v2) ^ t1;\
									c.v1 = t2;\
								}


/*------------- Data structure specified for GF(3) --------------*/
typedef struct {
	short **sub, **div;
} GF3;

typedef struct {
	packed_t v1, v2;
} GF3_VEC;

typedef struct {
	unsigned short dimension, block_length;
	unsigned short nBlocks;
	unsigned short nMatrices, nFullRankMatrices;
	unsigned short *rank;
	GF3_VEC  ***mat;
} PACKED_MATRIX_GF3;

/*-------------------- Function prototypes ----------------------*/
int  mindist_gf3(MATRIX G, mod_t m_mod, int lower_bound);
int  cyclic_mindist_gf3(MATRIX G, mod_t m_mod, int lower_bound);

#endif
