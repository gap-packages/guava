#ifndef RANDGRP
#define RANDGRP

extern void initializeSeed(
   unsigned long newSeed)      /* The new value for the seed. */
;

extern Unsigned randInteger(
   Unsigned lowerBound,           /* Lower bound for range of random integer. */
   Unsigned upperBound)           /* Upper bound for range of random integer. */
;

extern Word *randGroupWord(
   const PermGroup *const G,
   Unsigned atLevel)
;

extern Permutation *randGroupPerm(
   const PermGroup *const G,
   Unsigned atLevel)
;

#endif
