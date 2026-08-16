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

##
## BCHDecoder assumed a narrow sense code and bailed out to Decode for any
## other b, which has no method for the polynomial it was handed (and would
## have dispatched straight back into BCHDecoder had it had one).
##
gap> C := BCHCode(8,4,3,3);
a cyclic [8,5,3]2..3 BCH code, delta=3, b=4 over GF(3)
gap> c := Codeword([1,0,0,2,0,1,1,2], C);;
gap> c in C;
true
gap> r := Codeword([1,2,0,2,0,1,1,2], C);;
gap> Decodeword(C, r) = c;
true
gap> Decode(C, r) = InformationWord(C, c);
true
gap> C := BCHCode(13,4,5,3);
a cyclic [13,4,6..7]5..8 BCH code, delta=6, b=4 over GF(3)
gap> c := Codeword([1,1,2,2,0,2,2,2,1,0,1,0,2], C);;
gap> c in C;
true
gap> r := Codeword([1,0,2,2,0,2,2,2,0,0,1,0,2], C);;   # two errors
gap> Decodeword(C, r) = c;
true
