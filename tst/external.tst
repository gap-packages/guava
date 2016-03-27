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
