##
###################### GUAVA test file
##
## Created 03-2016; Joe Fields
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
gap> w = 8;
true

##
## MinimumWeight computes the minimum distance, so it records it
##
gap> B := GeneratorMatCode(GeneratorMat(HammingCode(4,GF(2))), GF(2));;
gap> MinimumWeight(B);
3
gap> HasMinimumDistance(B);
true

##
## told a lower bound, minimum-weight stops at the first codeword meeting it;
## a generator of smaller weight proves the bound was none
##
gap> B := GeneratorMatCode(GeneratorMat(HammingCode(4,GF(2))), GF(2));;
gap> B!.lowerBoundMinimumDistance := 5;;
gap> MinimumWeight(B);
3
