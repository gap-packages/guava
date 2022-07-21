gap> C1 := BestKnownLinearCode( 23, 12, GF(2) );
a linear [23,12,7]3 punctured code
gap> C1 = BinaryGolayCode();
false
gap> C1 := BestKnownLinearCode( 23, 12, GF(2) );
a linear [23,12,7]3 punctured code
gap> G1 := MutableCopyMat(GeneratorMat(C1));;
gap> PutStandardForm(G1);
()
gap> Display(G1);
 1 . . . . . . . . . . . 1 . 1 . 1 1 1 . . . 1
 . 1 . . . . . . . . . . 1 1 1 1 1 . . 1 . . .
 . . 1 . . . . . . . . . 1 1 . 1 . . 1 . 1 . 1
 . . . 1 . . . . . . . . 1 1 . . . 1 1 1 . 1 .
 . . . . 1 . . . . . . . 1 1 . . 1 1 . 1 1 . 1
 . . . . . 1 . . . . . . . 1 1 . . 1 1 . 1 1 1
 . . . . . . 1 . . . . . . . 1 1 . . 1 1 . 1 1
 . . . . . . . 1 . . . . 1 . 1 1 . 1 1 1 1 . .
 . . . . . . . . 1 . . . . 1 . 1 1 . 1 1 1 1 .
 . . . . . . . . . 1 . . . . 1 . 1 1 . 1 1 1 .
 . . . . . . . . . . 1 . 1 . 1 1 1 . . . 1 1 1
 . . . . . . . . . . . 1 . 1 . 1 1 1 . . . 1 1
