/*
 * types.h
 *
 * This header file contains data structure for the minimum Hamming
 * weight computation program
 * 
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 * 
 */

#ifndef _TYPES_H
#define _TYPES_H

/*---------------------- Data Structure ---------------------------*/
typedef unsigned long packed_t;

typedef struct {
	unsigned int q, rows, cols;
	unsigned int **m;
} MATRIX;

typedef enum { false = 0, true = 1 } bool;
typedef enum { C_0MOD2 = 1, C_1MOD2, C_3MOD4, C_0MOD4, C_0MOD3 } mod_t;

typedef struct {
	mod_t weight_constraint;
	unsigned short known_lower_bound;
	unsigned short lower_bound, upper_bound;
	unsigned short displayed_lower_bound;
	unsigned short info_weight_completed;
	unsigned short max_info_weight_req;
	unsigned short ith_matrix;
	unsigned short matrices_req;
} INFO;
/*-----------------------------------------------------------------*/

#endif
