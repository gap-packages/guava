##
###################### GUAVA test file
##
## Created 02-2006; Joe Fields
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
gap> e := Codeword("0000100", C);
[ 0 0 0 0 1 0 0 ]
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
gap> e := Codeword("0000100", C);
[ 0 0 0 0 1 0 0 ]
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
gap> e := Codeword("0000000000000000001000000000000", C);
[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 ]
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
gap> v := NullVector(WordLength(C), GF(9));;
gap> v[47] := One(GF(9));;
gap> e := Codeword(v, C);
[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]
gap> j := Decode(C,c+e);;
gap> (i=j);
true
gap> w := Decodeword(C,c+e);;
gap> (c=w);
true
