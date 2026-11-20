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
## minimum-weight reports its answer by writing an assignment to
## GUAVA_TEMP_VAR; a crashed run wrote nothing and the value the last code
## table lookup had left there was read back as the minimum weight
##
gap> C := BestKnownLinearCode(39,7);;
gap> MinimumWeight(C) = 17 and MinimumDistance(C) = 17;
true
gap> [LowerBoundMinimumDistance(C), UpperBoundMinimumDistance(C)];
[ 17, 17 ]

##
## told a lower bound, minimum-weight stops at the first codeword meeting it;
## a generator of smaller weight proves the bound was none
##
gap> B := GeneratorMatCode(GeneratorMat(HammingCode(4,GF(2))), GF(2));;
gap> B!.lowerBoundMinimumDistance := 5;;
gap> MinimumWeight(B);
3
