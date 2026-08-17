##
###################### GUAVA test file
##
## Created 02-2016; Joe Fields
##
gap> h:=[[0,0,0,1,1,1,1],    
>        [0,1,1,0,0,1,1], 
>        [1,0,1,0,1,0,1]];
[ [ 0, 0, 0, 1, 1, 1, 1 ], [ 0, 1, 1, 0, 0, 1, 1 ], [ 1, 0, 1, 0, 1, 0, 1 ] ]
gap> C := CheckMatCode(h,GF(2));
a linear [7,4,1..3]1 code defined by check matrix over GF(2)
gap> HasSpecialDecoder(C);      
false
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := GeneratorMatCode(h,GF(2));
a linear [7,3,1..4]2..3 code defined by generator matrix over GF(2)
gap> HasSpecialDecoder(C);      
false
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := HammingCode( 5, GF(2) ); 
a linear [31,26,3]1 Hamming (5,2) code over GF(2)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := HammingCode( 3, GF(9) );
a linear [91,88,3]1 Hamming (3,9) code over GF(9)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := BCHCode( 15, 1, 5, GF(2) ); #Narrow sense BCH code (b=1)
a cyclic [15,7,5]3..5 BCH code, delta=5, b=1 over GF(2)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> e := ErrorVector(Random(Combinations([1..WordLength(C)],2)), C);; 
gap> j := Decode(C,c+e);; 
gap> (i=j); 
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := BCHCode( 15, 3, 5, GF(2) ); #Not narrow sense
a cyclic [15,5,7]5 BCH code, delta=7, b=1 over GF(2)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> e := ErrorVector(Random(Combinations([1..WordLength(C)],2)), C);; 
gap> j := Decode(C,c+e);; 
gap> (i=j); 
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> e := ErrorVector(Random(Combinations([1..WordLength(C)],3)), C);; 
gap> j := Decode(C,c+e);; 
gap> (i=j); 
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := BCHCode( 23, 5, GF(2) );
a cyclic [23,12,5..7]3 BCH code, delta=5, b=1 over GF(2)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random(Combinations([1..WordLength(C)],2)), C);; 
gap> j := Decode(C,c+e);; 
gap> (i=j); 
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> C := BCHCode(26,5,GF(3));
a cyclic [26,17,5..6]3..6 BCH code, delta=5, b=1 over GF(3)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random([1..WordLength(C)]), C);;
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> e := ErrorVector(Random(Combinations([1..WordLength(C)],2)), C);; 
gap> j := Decode(C,c+e);; 
gap> (i=j); 
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true

#these test fail (randomly) because of a known bug in cyclic
#code decoding
#gap> x:= Indeterminate( GF(2) );; P:= x^3+x^2+1;;
#gap> C := GeneratorPolCode(P, 7, GF(2));
#a cyclic [7,4,1..3]1 code defined by generator polynomial over GF(2)
#gap> HasSpecialDecoder(C);
#true
#gap> c := Random(C);;
#gap> i := InformationWord(C, c);;
#gap> j := Decode(C,c);;
#gap> (i=j);
#true
#gap> w := Decodeword(C,c);;
#gap> (c=w);
#true
#gap> c := Random(C);
#gap> i := InformationWord(C, c);
#gap> e := ErrorVector(Random([1..WordLength(C)]), C);
#gap> j := Decode(C,c+e);
#gap> (i=j);
#true
#gap> w := Decodeword(C,c+e);;
#gap> (c=w);
#true
gap> x:= Indeterminate( GF(5) );; P:=x^8+x^7-x^5+Z(5)*x^3+Z(5)*x-1;;
gap> C := GeneratorPolCode(P, 24, GF(5));
a cyclic [24,16,1..6]4..8 code defined by generator polynomial over GF(5)
gap> HasSpecialDecoder(C);
true
gap> c := Random(C);;
gap> i := InformationWord(C, c);;
gap> j := Decode(C,c);;
gap> (i=j);
true
gap> w := Decodeword(C,c);;
gap> (c=w);
true

##
## https://github.com/gap-packages/guava/issues/12
## the GRS interpolation decoder mixed up the two halves of the
## interpolating polynomial and so returned an unrelated word
##
gap> R := PolynomialRing(GF(11),1);;
gap> P := List([1,3,4,5,7],i->Z(11)^i);;
gap> C := GeneralizedReedSolomonCode(P,3,R);
a linear [5,3,1..3]2  generalized Reed-Solomon code over GF(11)
gap> c := Codeword([5,4,5,4,2],GF(11));;
gap> c in C;
true
gap> r := Codeword([5,4,5,5,2],GF(11));;
gap> Decodeword(C,r) = c;
true
gap> Decode(C,r) = InformationWord(C,c);
true
gap> v := Codeword([5,2,6,10,9],GF(11));;
gap> Decodeword(C,v) = GeneralizedReedSolomonDecoderGao(C,v);
true

##
## https://github.com/gap-packages/guava/issues/41
## the BCH decoder crashed, or silently returned a non-codeword,
## on words carrying more than (d-1)/2 errors
##
gap> C := ReedSolomonCode(10,5);
a cyclic [10,6,5]3..4 Reed-Solomon code over GF(11)
gap> Decodeword(C, Codeword([7,10,3,2,4,9,5,7,5,9],C));
Error, not decodable
gap> Decodeword(C, Codeword([10,7,3,1,8,1,8,7,4,8],C));
Error, not decodable
gap> Decodeword(C, Codeword([4,0,0,6,5,0,0,0,0,0],C));
Error, not decodable
gap> Decodeword(C, Codeword([5,1,1,7,2,6,4,6,1,5],C));
Error, not decodable
gap> Decodeword(C, Codeword([3,7,5,5,1,10,3,9,2,8],C));
Error, not decodable
gap> C := ReedSolomonCode(10,4);
a cyclic [10,7,4]2..3 Reed-Solomon code over GF(11)
gap> Decodeword(C, Codeword([2,7,8,3,7,10,3,4,3,4],C));
Error, not decodable

## words within (d-1)/2 of the code must still decode
gap> C := ReedSolomonCode(10,5);;
gap> c := Codeword([1,2,3,4,5,6],GF(11))*C;;
gap> r := ShallowCopy(VectorCodeword(c));;
gap> r[3] := r[3]+Z(11);; r[7] := r[7]+Z(11)^3;;
gap> Decodeword(C, Codeword(r,C)) = c;
true
gap> Decode(C, Codeword(r,C)) = InformationWord(C,c);
true
