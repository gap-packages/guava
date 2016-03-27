##
###################### GUAVA test file
##
## Created 02-2016; Joe Fields
##
gap> C := ExtendedBinaryGolayCode();;
gap> G := AutomorphismGroup(C);;
gap> Size(G) =  244823040;
true
gap> C1 := ExtendedCode(HammingCode(3,2));;
gap> C2 := ReedMullerCode(1,3);;
gap> p := CodeIsomorphism(C1,C2);;
gap> C2 = PermutedCode(C1,p);
true
gap> W := ConstantWeightSubcode(C,8);;
gap> Size(W) = 759;
true
gap> w := MinimumWeight(C);;
[24,12] linear code over GF(2) - minimum weight evaluation
Known lower-bound: 8
There are 2 generator matrices, ranks : 12 12
The weight of the minimum weight codeword satisfies 0 mod 4 congruence
Enumerating codewords with information weight 1 (w=1)
    Found new minimum weight 8
    The known lower-bound is met, enumeration completed.
    Minimum weight: 8
gap> w = 8;
true
