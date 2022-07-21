#############################################################################
##
#A  codeword.gd            GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##
##  This file contains functions for working with codewords
##

#############################################################################
##
#F  IsCodeword( <v> ) . . . . . . . . . . . . . . . .  codeword category
##
DeclareCategory("IsCodeword", IsRowVector);
DeclareCategoryCollections("IsCodeword");

#############################################################################
##
#F  Codeword( <list> [, <F>] or . . . . . . . . . . . .  creates new codeword
#F  Codeword( <P> [, <n>] [, <F>] ) . . . . . . . . . . . . . . . . . . . . .
##  Codeword( <P>, Code)  . . . . . . . . . . . . . . . . . . . . . . . . . .
##
DeclareOperation("Codeword", [IsObject, IsInt, IsFFE]);

#############################################################################
##
#F  Support( <v> )  . . . . . . . set of coordinates in which <v> is not zero
##
DeclareAttribute("Support", IsCodeword);

#############################################################################
##
#F  TreatAsPoly( <v> )  . . . . . . . . . . . .  treat codeword as polynomial
##
##  The codeword <v> will be treated as a polynomial
##
DeclareOperation("TreatAsPoly", [IsCodeword]);

#############################################################################
##
#F  TreatAsVector( <v> )  . . . . . . . . . . . .  treat codeword as a vector
##
##  The codeword <v> will be treated as a vector
##
DeclareOperation("TreatAsVector", [IsCodeword]);

#############################################################################
##
#F  PolyCodeword( <arg> ) . . . . . . . . . . converts input to polynomial(s)
##
## Input may be codeword, polynomial, vector or a list of those
##
DeclareAttribute("PolyCodeword", IsCodeword);

#############################################################################
##
#F  VectorCodeword( <arg> ) . . . . . . . . . . . .  converts input to vector
##
## Input may be codeword, polynomial, vector or a list of those
##
DeclareAttribute("VectorCodeword", IsCodeword);

#############################################################################
##
#F  Weight( <v> ) . . . . . . . . . . . calculates the weight of codeword <v>
##
DeclareAttribute("Weight", IsCodeword);

#############################################################################
##
#F  WeightCodeword( <v> ) . . . . . . . calculates the weight of codeword <v>
##
DeclareSynonymAttr("WeightCodeword", Weight);

#############################################################################
##
#F  DistanceCodeword( <a>, <b> )  . the distance between codeword <a> and <b>
##
DeclareOperation("DistanceCodeword", [IsCodeword, IsCodeword]);

#############################################################################
##
#F  NullWord( <C> ) or NullWord( <n>, <F> ) . . . . . . . . . . all zero word
##
DeclareOperation("NullWord", [IsInt, IsFFE]);

#############################################################################
##
## Zero(<w>) .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  zero codeword
##

#############################################################################
##
#F  WordLength( <v> ) . . . . . . . . . stores the wordlength of codeword <v>
## 	Currently no method to calculate.  Assumed to be set at creation.
DeclareAttribute("WordLength", IsCodeword);

#############################################################################
##
#F  AdditiveInverseMutable( <v> ) . .  . determines the negative of a
##                              codewor <v>. (Used in subtraction of codewords.)
##
# DeclareOperation("AdditiveInverseMutable", [IsCodeword]);

#############################################################################
##
#F  Codeword( <list>, <n> [, <F>] or . . . . . . . . creates new codeword with
#F  Codeword( <list> , <Code> ) . . . . . . . . . . . support in <list>
##
DeclareOperation("ErrorVector", [IsSet, IsInt, IsFFE]);

