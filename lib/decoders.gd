#############################################################################
##
#A  decoders.gd             GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##                                                              &David Joyner
##
##  This file contains functions for decoding codes
##
## some commands moved form cdeops.gi and Decodeword added in 10-2004
## added GeneralizedReedSolomonDecoder 11-2005
## added GeneralizedReedSolomonListDecoder and GRS<functions>, 12-2004
## added PermutationDecoderNC, CyclicDecoder 5-2005
## 1-2006: added BitFlipDecoder
##

#############################################################################
##
#F  Decode( <C>, <v> )  . . . . . . . . .  decodes the word(s) v to
##                                 the information digits of a codeword in <C>
##                                        (<C> must be linear)
##
##  v can be a codeword or a list of codewords
##
DeclareOperation("Decode", [IsCode, IsCodeword]);

#############################################################################
##
#F  Decodeword( <C>, <v> )  . . . . . . . . .  decodes the word(s) v to
##                                                 a codeword in <C>
##                                        (<C> need not be linear)
##
##  v can be a codeword or a list of codewords
##
DeclareOperation("Decodeword", [IsCode, IsCodeword]);

#############################################################################
##
#F  PermutationDecode( <C>, <v> )    decodes the vector <v> from <C>
##
##  v is a vector (ie, a list)
##
DeclareOperation("PermutationDecode", [IsLinearCode, IsList]);

#############################################################################
##
#F  PermutationDecodeNC( <C>, <v>, <P> )    decodes the vector <v> to <C>,
##
##  v is a vector (ie, a list), P subset Aut(C) is a finite permutation aut gp
##
DeclareOperation("PermutationDecodeNC", [IsLinearCode,IsCodeword,IsGroup]);

########################################################################
##
#F  SpecialDecoder( <code> )
##
##  Special function to decode
##
DeclareAttribute("SpecialDecoder", IsCode, "mutable");

#############################################################################
##
#F  BCHDecoder( <C>, <r> )  . . . . . . . . . . . . . . . . decodes BCH codes
##
DeclareOperation("BCHDecoder", [IsCode, IsCodeword]);

#############################################################################
##
#F  CyclicDecoder( <C>, <r> )  . . . . . . . . . . . . . decodes cyclic codes
##
DeclareOperation("CyclicDecoder", [IsCode, IsCodeword]);

#############################################################################
##
#F  HammingDecoder( <C>, <r> )  . . . . . . . . . . . . decodes Hamming codes
##
##  Generator matrix must have all unit columns
DeclareOperation("HammingDecoder", [IsCode, IsCodeword]);


#############################################################################
##
#F  GeneralizedReedSolomonDecoderGao( <C>, <v> )   . . decodes
##                                           generalized Reed-Solomon codes
##                                           using S. Gao's method
##
DeclareOperation("GeneralizedReedSolomonDecoderGao", [IsCode, IsCodeword]);

##########################################################
##
## GRSLocatorMat( <r> , <Xlist> , <L> )
## Input: Xlist=[x1,..,xn], l = highest power,
##       L=[h_1,...,h_ell] is list of powers
##       r=[r1,...,rn] is received vector
## Output: Computes matrix described in Algor. 12.1.1 in [JH]
##
## needed for both GeneralizedReedSolomonDecoder
##             and GeneralizedReedSolomonListDecoder

##############################################################
##
##  GRSErrorLocatorCoeffs( <r> , <Pts> , <L> )
##
## Input: Pts=[x1,..,xn],
##        L=[h_1,...,h_ell] is list of powers
##        r=[r1,...,rn] is received vector
##
## Output: the lists of coefficients of the polynomial Q(x,y) in alg 12.1.1.
##

#######################################################
##
##  GRSErrorLocatorPolynomials( <r> , <Pts> , <L> , <R> )
##
## Input: List L of ell_j,
##        R = F[x],
##        Pts=[x1,..,xn],
##        r=[r1,...,rn] is received vector
## Output: list of polynomials Qi as in Algor. 12.1.1 in [JH]
##

##########################################################
##
##   GRSInterpolatingPolynomial( <r> , <Pts> , <L> , <R> )
##
## Input: List L of ell_j
##        R = F[x]
##        Pts=[x1,..,xn],
##        r=[r1,...,rn] is received vector
## Output: interpolating polynomial Q as in Algor. 12.1.1 in [JH]
##

#############################################################################
##
#F  GeneralizedReedSolomonDecoder( <C>, <v> )   . . decodes
##                                           generalized Reed-Solomon codes
##                                           using the interpolation algorithm
##
DeclareOperation("GeneralizedReedSolomonDecoder", [IsCode, IsCodeword]);

#############################################################################
##
#F  GeneralizedReedSolomonListDecoder( <C>, <v> , <ell> )   . . ell-list decodes
##                                           generalized Reed-Solomon codes
##                                           using M. Sudan's algorithm
##
DeclareOperation("GeneralizedReedSolomonListDecoder",[IsCode, IsCodeword, IsInt]);

#############################################################################
##
#F  NearestNeighborGRSDecodewords( <C>, <v> , <dist> )   . . . finds all
##                                           generalized Reed-Solomon codewords
##                                           within distance <dist> from v
##                                           *and* the associated polynomial,
##                                           using "brute force"
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a GRS code
##        dist>0 is the distance from v to search
## Output: a list of pairs [c,f(x)], where wt(c-v)<dist
##         and c = (f(x1),...,f(xn))
##
## ****** very slow*****
##
DeclareOperation("NearestNeighborGRSDecodewords",[IsCode, IsCodeword, IsInt]);

#############################################################################
##
#F  NearestNeighborDecodewords( <C>, <v> , <dist> )   . . . finds all
##                                           codewords in a linear code C
##                                           within distance <dist> from v
##                                           using "brute force"
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a linear code
##        dist>0 is the distance from v to search
## Output: a list of c in C, where wt(c-v)<dist
##
## ****** very slow*****
##
DeclareOperation("NearestNeighborDecodewords",[IsCode, IsCodeword, IsInt]);
#############################################################################
##
#F  BitFlipDecoder( <C>, <v>  )   . . . decodes *binary* LDPC codes using bit-flipping
##                                                           or Gallager hard-decision
##               ** often fails to work if C is not LDPC **
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a binary LDPC code
## Output: a c in C, where wt(c-v)<mindis(C)
##
## ****** fast *****
##
DeclareOperation("BitFlipDecoder",[IsCode, IsCodeword]);
