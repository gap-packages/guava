/*
 * popcount.c
 *
 * This file contains functions related to population count
 *
 * Note that the popcount() implementation for POPCOUNT_STD is taken from
 * Joerg's useful and ugly FFT page (http://www.jjj.de/fft/fftpage.html)
 *
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 *
 */

#include <stdlib.h>
#include "popcount.h"

#if defined(POPCOUNT_LUT8) || defined(POPCOUNT_LUT16)
unsigned short *__popcnt_LUT;
#endif

/* Initialisation for population count */
void init_popcount() {
#if defined(POPCOUNT_LUT8) || defined(POPCOUNT_LUT16)
	__init_popcount_LUT();
#endif
}

/* Deallocate memory used  population count */
void clear_popcount() {
#if defined(POPCOUNT_LUT8) || defined(POPCOUNT_LUT16)
	__clear_popcount_LUT();
#endif
}

#if defined(POPCOUNT_LUT8) || defined(POPCOUNT_LUT16)
/* Initialise the look-up table for population count */
void __init_popcount_LUT() {
#ifdef POPCOUNT_LUT8
	#define LUT_SIZE	8		/* 8 bit LUT */
#else
	#define LUT_SIZE	16		/* 16 bit LUT */
#endif
    int i, j, n;
    __popcnt_LUT = 
		(unsigned short *)malloc((0x1U<<LUT_SIZE) * sizeof(unsigned short));
    n = 0;
    while (n < 0x1U<<LUT_SIZE) {
        i = 0; j = n;
        while (j) { i++; j &= (j-1); }
        __popcnt_LUT[n++] = i;
    }
#undef LUT_SIZE
}

/* Deallocate memory allocated for population count */
void __clear_popcount_LUT() {
	free(__popcnt_LUT);
}
#endif	/* POPCOUNT_LUT8 || POPCOUNT_LUT16 */

/* Population count function */
#if	POPCOUNT_STD
unsigned int popcount(unsigned long x) {
#if  BITS_PER_LONG == 32
    x -=  (x>>1) & 0x55555555UL;
    x  = ((x>>2) & 0x33333333UL) + (x & 0x33333333UL);
    x  = ((x>>4) + x) & 0x0f0f0f0fUL;
    x *= 0x01010101UL;
    return  x>>24;
#else	/* BITS_PER_LONG is 64 */
    x -=  (x>>1) & 0x5555555555555555UL;
    x  = ((x>>2) & 0x3333333333333333UL) + (x & 0x3333333333333333UL);
    x  = ((x>>4) + x) & 0x0f0f0f0f0f0f0f0fUL;
    x *= 0x0101010101010101UL;
    return  x>>56;
#endif	/* BITS_PER_LONG */
}
#endif	/* POPCOUNT_STD */
