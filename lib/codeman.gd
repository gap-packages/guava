#############################################################################
##
#A  codeman.gd              GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##
##  This file contains functions for manipulating codes
##

#############################################################################
##
#F  DualCode( <C> ) . . . . . . . . . . . . . . . . . . . .  dual code of <C>
##
DeclareOperation("DualCode", [IsCode]);

#############################################################################
##
#F  AugmentedCode( <C> [, <L>] )  . . .  add words to generator matrix of <C>
##
DeclareOperation("AugmentedCode", [IsCode, IsObject]);

#############################################################################
##
#F  EvenWeightSubcode( <C> )  . . .  code of all even-weight codewords of <C>
##
DeclareOperation("EvenWeightSubcode", [IsCode]);

#############################################################################
##
#F  ConstantWeightSubcode( <C> [, <w>] )  .  all words of <C> with weight <w>
##
DeclareOperation("ConstantWeightSubcode", [IsCode, IsInt]);

#############################################################################
##
#F  ExtendedCode( <C> [, <i>] ) . . . . . code with added parity check symbol
##
DeclareOperation("ExtendedCode", [IsCode, IsInt]);

#############################################################################
##
#F  ShortenedCode( <C> [, <L>] )  . . . . . . . . . . . . . .  shortened code
##
DeclareOperation("ShortenedCode", [IsCode, IsList]);

#############################################################################
##
#F  PuncturedCode( <C> [, <list>] ) . . . . . . . . . . . . .  punctured code
##
##  PuncturedCode(C [, remlist]) punctures a code by leaving out the
##  coordinates given in list remlist. If remlist is omitted, then
##  the last coordinate will be removed.
##
DeclareOperation("PuncturedCode", [IsCode, IsList]);

#############################################################################
##
#F  ExpurgatedCode( <C>, <L> )  . . . . .  removes codewords in <L> from code
##
##  The usual way of expurgating a code is removing all words of odd weight.
##
DeclareOperation("ExpurgatedCode", [IsCode, IsList]);

#############################################################################
##
#F  AddedElementsCode( <C>, <L> ) . . . . . . . . . .  adds words in list <L>
##
DeclareOperation("AddedElementsCode", [IsCode, IsList]);

#############################################################################
##
#F  RemovedElementsCode( <C>, <L> ) . . . . . . . . removes words in list <L>
##
DeclareOperation("RemovedElementsCode", [IsCode, IsList]);

#############################################################################
##
#F  LengthenedCode( <C> [, <i>] ) . . . . . . . . . . . . . .  lengthens code
##
DeclareOperation("LengthenedCode", [IsCode, IsInt]);

#############################################################################
##
#F  ResidueCode( <C> [, <w>] )  . .  takes residue of <C> with respect to <w>
##
##  If w is omitted, a word from C of minimal weight is used
##
DeclareOperation("ResidueCode", [IsCode, IsCodeword]);

#############################################################################
##
#F  ConstructionBCode( <C> )  . . . . . . . . . . .  code from construction B
##
##  Construction B (See M&S, Ch. 18, P. 9) assumes that the check matrix has
##  a first row of weight d' (the dual distance of C). The new code has a
##  check matrix equal to this matrix, but with columns removed where the
##  first row is 1.
##
DeclareOperation("ConstructionBCode", [IsCode]);

#############################################################################
##
#F  ConstructionB2Code( <C> )  . . . . . . . . . .  code from construction B2
##
##  Construction B2 is mixtures of shortening and puncturing. Given an
##  [n,k,d] code which has dual code of minimum distance s, we obtain
##  an [n-s, k-s+2j+1, d-2j] code for each j with 2j+1 < s.
##
##  For more details, see A. Brouwer (1998), "Bounds on the size of linear
##  codes,", in Handbook of Coding Theory, V. S. Pless and W. C. Huffmann
##  ed., pp. 311
##
##  added by CJ, April 2006
##
DeclareOperation("ConstructionB2Code", [IsCode]);

#############################################################################
##
#F  SubCode( <C>, [ <s> ] ) . . . . . . . . . . . . . . . . . . subcode of C
##
##  Given C, an [n,k,d] code, return a subcode of C with dimension k-s.
##  If s is not given, it is assumed 1.
##
##  added by CJ, April 2006
DeclareOperation("SubCode", [IsCode, IsInt]);

#############################################################################
##
#F  PermutedCode( <C>, <P> )  . . . . . . . permutes coordinates of codewords
##
DeclareOperation("PermutedCode", [IsCode, IsPerm]);

#############################################################################
##
#F  StandardFormCode( <C> ) . . . . . . . . . . . . standard form of code <C>
##
DeclareOperation("StandardFormCode", [IsCode]);

#############################################################################
##
#F  ConversionFieldCode( <C> )  . . . . . converts code from GF(q^m) to GF(q)
##
DeclareOperation("ConversionFieldCode", [IsCode]);

#############################################################################
##
#F  CosetCode( <C>, <f> ) . . . . . . . . . . . . . . . . . . .  coset of <C>
##
DeclareOperation("CosetCode", [IsCode, IsCodeword]);

#############################################################################
##
#F  DirectSumCode( <C1>, <C2> ) . . . . . . . . . . . . . . . . .  direct sum
##
##  DirectSumCode(C1, C2) creates a (n1 + n2 , M1 M2 , min{d1 , d2} ) code
##  by adding each codeword of the second code to all the codewords of the
##  first code.
##
DeclareOperation("DirectSumCode", [IsCode, IsCode]);

#############################################################################
##
#F  ConcatenationCode( <C1>, <C2> ) . . . . .  concatenation of <C1> and <C2>
##
DeclareOperation("ConcatenationCode", [IsCode, IsCode]);

#############################################################################
##
#F  DirectProductCode( <C1>, <C2> ) . . . . . . . . . . . . .  direct product
##
##  DirectProductCode constructs a new code from the direct product of two
##  codes by taking the Kronecker product of the two generator matrices
##
DeclareOperation("DirectProductCode", [IsCode, IsCode]);

#############################################################################
##
#F  UUVCode( <C1>, <C2> ) . . . . . . . . . . . . . . .  u | u+v construction
##
##  Uuvcode(C1, C2) # creates a ( 2n , M1 M2 , d = min{2 d1 , d2} ) code
##  with codewords  (u | u + v) for all u in C1 and v in C2
##
DeclareOperation("UUVCode", [IsCode, IsCode]);

#############################################################################
##
#F  UnionCode( <C1>, <C2> ) . . . . . . . . . . . . .  union of <C1> and <C2>
##
DeclareOperation("UnionCode", [IsCode, IsCode]);

#############################################################################
##
#F  IntersectionCode( <C1>, <C2> )  . . . . . . intersection of <C1> and <C2>
##
DeclareOperation("IntersectionCode", [IsCode, IsCode]);

#############################################################################
##
#F  ConstructionXCode( <C>, <A> ) ... code from Construction X
##
##
DeclareOperation("ConstructionXCode", [IsList, IsList]);

#############################################################################
##
#F  ConstructionXXCode( <C1>, <C2>, <C3>, <A1>, <A2>  ) ... code from Construction XX
##
##
DeclareOperation("ConstructionXXCode", [IsCode, IsCode, IsCode, IsCode, IsCode]);

#########################################################################
##
#F BZCode( <O>, <I> ) . . . . . . . . . . Blokh Zyablov concatenated code
##
## Given a set of outer codes O_i=[N, K_i, D_i] over GF(q^e_i), where
## i=1,2,...,t and a set of inner codes I_i=[n, k_i, d_i] over GF(q),
## BZCode returns a multilevel concatenated code with parameter
## [ n*N, e_1*K_1 + e_2*K_2 + ... + e_t*K_t, min(d_i * D_i)] over GF(q).
##
## Note that the set inner codes must satisfy chain condition, i.e.
## I_1=[n,k_1,d_1] < I_2=[n,k_2,d_2] < ... < I_t=[n,k_t,d_t] where
## 0=k_0 < k_1 < k_2 < ... < k_t.
##
## The dimensions of the inner code must satisfy the condition
## e_i = k_i - k_{i-1}, where GF(q^e_i) is the field of the ith
## outer code.
##
DeclareOperation("BZCode", [IsList, IsList]);

DeclareOperation("BZCodeNC", [IsList, IsList]);

#############################################################################
##
#F  HullCode( <C> ) . . . . . . . . . . . . . . . . . . . .  hull of <C>
##
DeclareOperation("HullCode", [IsCode]);

