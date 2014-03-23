/*
 * minimum-weight-gf2.h
 *
 * Minimum Hamming weight computation for codes over GF(2)
 *
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 *
 */

#ifndef _MINIMUM_WEIGHT_GF2_H
#define _MINIMUM_WEIGHT_GF2_H

#include "types.h"

/*------------- Data structure specified for GF(2) --------------*/
typedef struct {
	unsigned short dimension, block_length;
	unsigned short nBlocks;
	unsigned short nMatrices, nFullRankMatrices;
	unsigned short *rank;
	packed_t ***mat;
} PACKED_MATRIX_GF2;

int mindist_gf2(MATRIX G, mod_t m_mod, int lower_bound);
int cyclic_mindist_gf2(MATRIX G, mod_t m_mod, int lower_bound);

#endif
