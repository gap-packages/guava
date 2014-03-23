/*
 * config.h
 *
 * This file contains various configuration needed for compilation
 * 
 * The minimum Hamming weight computation uses different types of
 * population count (bit count) methods, see popcount.h/c:
 * 		POPCOUNT_STD
 *  	POPCOUNT_LUT8
 *  	POPCOUNT_LUT16
 * 
 * Version Log:
 *   0.1  18 March 2008 (first released to public -- GUAVA 3.3)   
 *  
 * CJ, Tjhai 
 * email: ctjhai@plymouth.ac.uk
 * Homepage: www.plymouth.ac.uk/staff/ctjhai
 *
 */

#ifndef _CONFIG_H
#define	_CONFIG_H

#include <limits.h>

#undef BITS_PER_LONG
#if ULONG_MAX == 0xffffffffUL
#	define	BITS_PER_LONG	32
#elif ULONG_MAX == 0xffffffffffffffffUL
#	define	BITS_PER_LONG	64
#else
#	error	Unknown architecture, report to ctjhai@plymouth.ac.uk
#endif

#if BITS_PER_LONG == 64		/* 64-bit */
#	define ZERO			0x0UL
#	define ONE			0x1UL
#	define MOD			0x3F
#	define LOG2			6
#else						/* 32-bit */
#	define ZERO			0x0UL
#	define ONE			0x1UL
#	define MOD			0x1F
#	define LOG2			5
#endif /* BITS_PER_LONG */
#define BITSIZE			BITS_PER_LONG

#define POPCOUNT_LUT16	1

#endif
