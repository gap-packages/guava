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
## an empty list is a string, so Codeword([], ...) used to be handed back
## to the very method that produced it, looping forever.  Encoding the zero
## information word into a cyclic code goes through exactly that call.
##
gap> Codeword([], 4, Z(5)^0);
[ 0 0 0 0 ]
gap> Codeword([], 4, GF(5));
[ 0 0 0 0 ]
gap> Codeword([], 4);
[ 0 0 0 0 ]
gap> C := ReedSolomonCode(4,3);;
gap> c := [0*Z(5),0*Z(5)]*C;;
gap> WordLength(c) = WordLength(C) and c in C;
true
gap> Codeword("1010", 4, GF(2));   # strings still work
[ 1 0 1 0 ]
gap> Codeword("123", 5, GF(4));
[ 1 a a^2 0 0 ]

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

##
## CyclotomicCosets(q,1) indexed an empty list instead of returning the one
## class there is.  RootsCode reached that whenever the roots it was given
## generated only the prime field, so 1 as the sole root always crashed.
##
gap> CyclotomicCosets(2,1);
[ [ 0 ] ]
gap> CyclotomicCosets(4,1);
[ [ 0 ] ]
gap> C := RootsCode(7, [Z(2)^0], GF(2));;
gap> Dimension(C);
6
gap> MinimumDistance(C);
2

##
## CodeDistanceEnumerator only had a method for a codeword, so the plain list
## the manual passes it found no method at all
##
gap> C := HammingCode(3,GF(2));;
gap> CodeDistanceEnumerator(C, [0,0,0,0,0,0,1])
>      = CodeDistanceEnumerator(C, Codeword([0,0,0,0,0,0,1],GF(2)));
true
gap> CodeDistanceEnumerator(C, [1,1,1,1,1,1,1]) = CodeWeightEnumerator(C);
true

##
## LowerBoundGilbertVarshamov divided by the size of a sphere of radius d-2,
## which is empty when d is 1
##
gap> LowerBoundGilbertVarshamov(4,1,2);
16
gap> LowerBoundGilbertVarshamov(3,1,3);
27
gap> List([2..8], n -> LowerBoundGilbertVarshamov(n,2,2) = 2^(n-1));
[ true, true, true, true, true, true, true ]
