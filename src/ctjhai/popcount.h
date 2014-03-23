/*
 * popcount.h
 *
 * This header file contains various declaration for population count
 *
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 *
 */

#ifndef _POPCOUNT_H
#define _POPCOUNT_H

#include "config.h"

/* Global variable -- only used for LUT-based popcount */
#if defined(POPCOUNT_LUT8) || defined(POPCOUNT_LUT16)
extern unsigned short *__popcnt_LUT;
#endif

/* Function prototypes */
void init_popcount();
void __init_popcount_LUT();
void clear_popcount();
void __clear_popcount_LUT();

/* The following contains the macros that actually do the population count */
#if defined(POPCOUNT_LUT8)		/* 8-bit LUT */
#	if BITS_PER_LONG == 64	/* 64-bit machine */
#		define popcount(__v)   (__popcnt_LUT[__v & 0xFFUL] + __popcnt_LUT[(__v>>8) & 0xFFUL] + \
        		                __popcnt_LUT[(__v>>16) & 0xFFUL] + __popcnt_LUT[(__v>>24) & 0xFFUL] + \
        		                __popcnt_LUT[(__v>>32) & 0xFFUL] + __popcnt_LUT[(__v>>40) & 0xFFUL] + \
        		                __popcnt_LUT[(__v>>48) & 0xFFUL] + __popcnt_LUT[(__v>>56) & 0xFFUL])
#	else					/* 32-bit machine */
#		define popcount(__v)   (__popcnt_LUT[__v & 0xFFU] + __popcnt_LUT[(__v>>8) & 0xFFU] + \
		                        __popcnt_LUT[(__v>>16) & 0xFFU] + __popcnt_LUT[(__v>>24) & 0xFFU])
#	endif					
#elif defined(POPCOUNT_LUT16)	/* 16-bit LUT */
#	if BITS_PER_LONG == 64	/* 64-bit machine */
#		define popcount(__v)   (__popcnt_LUT[__v & 0xFFFFUL] + __popcnt_LUT[(__v>>16) & 0xFFFFUL] + \
        		                __popcnt_LUT[(__v>>32) & 0xFFFFUL] + __popcnt_LUT[(__v>>48) & 0xFFFFUL])
#	else					/* 32-bit machine */
#		define popcount(__v)   (__popcnt_LUT[__v & 0xFFFFU] + __popcnt_LUT[(__v>>16) & 0xFFFFU])
#	endif					
#elif defined(POPCOUNT_STD)
	unsigned int popcount(unsigned long x);
#endif

#endif	/* _POPCOUNT_H */
