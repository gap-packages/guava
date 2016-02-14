##
###################### GUAVA test file
##
## Created 02-2006; last modified 2-14-2016 Joe Fields
##
gap> START_TEST("Guava installation tests");;
gap> Print(" AClosestVectorCombinationsMatFFEVecFFE\n");
 AClosestVectorCombinationsMatFFEVecFFE
gap> F:=GF(3);
GF(3)
gap> x:= Indeterminate( F );
x_1
gap> pol:= x^2+1;
x_1^2+Z(3)^0
gap> C := GeneratorPolCode(pol,8,F);
a cyclic [8,6,1..2]1..2 code defined by generator polynomial over GF(3)
gap> v:=Codeword("12101111");
[ 1 2 1 0 1 1 1 1 ]
gap> v:=VectorCodeword(v);
[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> G:=GeneratorMat(C);
[ [ Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ] ]
gap> AClosestVectorCombinationsMatFFEVecFFE(G,F,v,1,1);
[ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ]
gap> Print("\n"); 

gap> Print(" AClosestVectorCombinationsMatFFEVecFFECoords\n");
 AClosestVectorCombinationsMatFFEVecFFECoords
gap> F:=GF(3);
GF(3)
gap> x:= Indeterminate( F );
x_1
gap> pol:= x^2+1;
x_1^2+Z(3)^0
gap> C := GeneratorPolCode(pol,8,F);
a cyclic [8,6,1..2]1..2 code defined by generator polynomial over GF(3)
gap> v:=Codeword("12101111"); 
[ 1 2 1 0 1 1 1 1 ]
gap> v:=VectorCodeword(v);
[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> G:=GeneratorMat(C);
[ [ Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3) ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ] ]
gap> AClosestVectorCombinationsMatFFEVecFFECoords(G,F,v,1,1);
[ [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ], 
  [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0 ] ]
gap> Print("\n"); 

gap> Print(" DistancesDistributionMatFFEVecFFE\n");
 DistancesDistributionMatFFEVecFFE
gap> v:=[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ];
[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> vecs:=[ 
>    [ Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ] ];;
gap> DistancesDistributionMatFFEVecFFE(vecs,GF(3),v);
[ 0, 4, 6, 60, 109, 216, 192, 112, 30 ]
gap> Print("\n"); 

gap> Print(" DistancesDistributionVecFFEsVecFFE\n");
 DistancesDistributionVecFFEsVecFFE
gap> v:=[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ];
[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> vecs:=[ 
>    [ Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3), 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0, 0*Z(3) ],
>    [ 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), 0*Z(3), Z(3)^0, 0*Z(3), Z(3)^0 ] ];;
gap> DistancesDistributionVecFFEsVecFFE(vecs,v);
[ 0, 0, 0, 0, 0, 4, 0, 1, 1 ]
gap> Print("\n"); 

gap> Print(" DistanceVecFFE\n");
 DistanceVecFFE
gap> v1:=[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ];
[ Z(3)^0, Z(3), Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> v2:=[ Z(3), Z(3)^0, Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ];
[ Z(3), Z(3)^0, Z(3)^0, 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, Z(3)^0 ]
gap> DistanceVecFFE(v1,v2);
2
gap> Print("\n"); 

gap> Print(" Codes\n");
 Codes
gap> C:=RandomLinearCode(20,10,GF(4));
a  [20,10,?] randomly generated code over GF(4)
gap> c:=Random(C);;
gap> NamesOfComponents(C);
[ "Representative", "ZeroImmutable", "name", "LeftActingDomain", "Dimension", 
  "GeneratorsOfLeftOperatorAdditiveGroup", "Basis", "NiceFreeLeftModule", 
  "WordLength", "GeneratorMat" ]
gap> NamesOfComponents(c);
[ "VectorCodeword", "WordLength", "treatAsPoly" ]
gap> c!.VectorCodeword;
< immutable compressed vector length 20 over GF(4) >
gap> C!.Dimension;
10
gap> Print("\n"); 

gap> Print(" Codeword\n");
 Codeword
gap> c := Codeword([0,1,1,1,0]);
[ 0 1 1 1 0 ]
gap> VectorCodeword( c ); 
[ 0*Z(2), Z(2)^0, Z(2)^0, Z(2)^0, 0*Z(2) ]
gap> c2 := Codeword([0,1,1,1,0], GF(3));
[ 0 1 1 1 0 ]
gap> VectorCodeword( c2 );
[ 0*Z(3), Z(3)^0, Z(3)^0, Z(3)^0, 0*Z(3) ]
gap> Codeword([c, c2, "0110"]);
[ [ 0 1 1 1 0 ], [ 0 1 1 1 0 ], [ 0 1 1 0 ] ]
gap> p := UnivariatePolynomial(GF(2), [Z(2)^0, 0*Z(2), Z(2)^0]);
x_1^2+Z(2)^0
gap> Codeword(p);
x^2 + 1
gap> Print("\n"); 

gap> Print(" Codeword2\n");
 Codeword2
gap> C := WholeSpaceCode(7,GF(5));
a cyclic [7,7,1]0 whole space code over GF(5)
gap> Codeword(["0220110", [1,1,1]], C);
[ [ 0 2 2 0 1 1 0 ], [ 1 1 1 0 0 0 0 ] ]
gap> Codeword(["0220110", [1,1,1]], 7, GF(5));
[ [ 0 2 2 0 1 1 0 ], [ 1 1 1 0 0 0 0 ] ]
gap> C:=RandomLinearCode(10,5,GF(3));
a  [10,5,?] randomly generated code over GF(3)
gap> Codeword("1000000000",C);
[ 1 0 0 0 0 0 0 0 0 0 ]
gap> Codeword("1000000000",10,GF(3));
[ 1 0 0 0 0 0 0 0 0 0 ]
gap> Print("\n"); 

gap> Print(" CodewordNr\n");
 CodewordNr
gap> B := BinaryGolayCode();
a cyclic [23,12,7]3 binary Golay code over GF(2)
gap> c := CodewordNr(B, 4);
x^22 + x^20 + x^17 + x^14 + x^13 + x^12 + x^11 + x^10
gap> R := ReedSolomonCode(2,2);
a cyclic [2,1,2]1 Reed-Solomon code over GF(3)
gap> AsSSortedList(R);
[ [ 0 0 ], [ 1 1 ], [ 2 2 ] ]
gap> CodewordNr(R, [1,3]);
[ [ 0 0 ], [ 2 2 ] ]
gap> Print("\n"); 

gap> Print(" IsCodeword\n");
 IsCodeword
gap> IsCodeword(1);
false
gap> IsCodeword(ReedMullerCode(2,3));
false
gap> IsCodeword("11111");
false
gap> IsCodeword(Codeword("11111"));
true
gap> Print("\n"); 

gap> Print(" Codewords EQ\n");
 Codewords EQ
gap> P := UnivariatePolynomial(GF(2), Z(2)*[1,0,0,1]);
x_1^3+Z(2)^0
gap> c := Codeword(P, GF(2));
x^3 + 1
gap> P = c;        # codeword operation
true
gap> c2 := Codeword("1001", GF(2));
[ 1 0 0 1 ]
gap> c = c2;
true
gap> C:=HammingCode(3);
a linear [7,4,3]1 Hamming (3,2) code over GF(2)
gap> c1:=Random(C);;
gap> c2:=Random(C);;
gap> EQ(c1,c2);
false
gap> Print("\n"); 

gap> Print(" Codewords +\n");
 Codewords +
gap> C:=RandomLinearCode(10,5,GF(3));
a  [10,5,?] randomly generated code over GF(3)
gap> c:=Random(C);;
gap> d:=Codeword(c+"2000000000");;
gap> WordLength(d);
10
gap> Print("\n"); 

gap> Print(" Codewords +, 2\n");
 Codewords +, 2
gap> C:=RandomLinearCode(10,5);
a  [10,5,?] randomly generated code over GF(2)
gap> c:=Random(C);;
gap> D:=c+C;
<add. coset of a  [10,5,?] randomly generated code over GF(2)>
gap> D=C;
true
gap> IsLinearCode(D);
false
gap> v:=Codeword("100000000");
[ 1 0 0 0 0 0 0 0 0 ]
gap> C2:=v+C;
<add. coset of a  [10,5,?] randomly generated code over GF(2)>
gap> C=C2;
false
gap> C := GeneratorMatCode( [ [1,0,0,0], [0,1,0,0] ], GF(2) );
a linear [4,2,1]1..2 code defined by generator matrix over GF(2)
gap> Elements(C);
[ [ 0 0 0 0 ], [ 0 1 0 0 ], [ 1 0 0 0 ], [ 1 1 0 0 ] ]
gap> v:=Codeword("0011");
[ 0 0 1 1 ]
gap> C+v;
<add. coset of a linear [4,2,1]1..2 code defined by generator matrix over GF(2\
)>
gap> Elements(C+v);
[ [ 0 0 1 1 ], [ 0 1 1 1 ], [ 1 0 1 1 ], [ 1 1 1 1 ] ]
gap> Print("\n"); 

gap> Print(" PolyCodeword\n");
 PolyCodeword
gap> a := Codeword("011011");
[ 0 1 1 0 1 1 ]
gap> PolyCodeword(a);
x_1^5+x_1^4+x_1^2+x_1
gap> Print("\n"); 

gap> Print(" TreatAsVector\n");
 TreatAsVector
gap> B := BinaryGolayCode();
a cyclic [23,12,7]3 binary Golay code over GF(2)
gap> c := CodewordNr(B, 4);
x^22 + x^20 + x^17 + x^14 + x^13 + x^12 + x^11 + x^10
gap> TreatAsVector(c);
gap> c;
[ 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 1 0 1 ]
gap> Print("\n"); 

gap> Print(" TreatAsPoly\n");
 TreatAsPoly
gap> a := Codeword("00001",GF(2));
[ 0 0 0 0 1 ]
gap> TreatAsPoly(a); 
gap> a;
x^4
gap> b := NullWord(6,GF(4));
[ 0 0 0 0 0 0 ]
gap> TreatAsPoly(b);
gap> b;
0
gap> Print("\n"); 

gap> Print(" NullWord\n");
 NullWord
gap> NullWord(8);
[ 0 0 0 0 0 0 0 0 ]
gap> Codeword("0000") = NullWord(4);
true
gap> NullWord(5,GF(16));
[ 0 0 0 0 0 ]
gap> NullWord(ExtendedTernaryGolayCode());
[ 0 0 0 0 0 0 0 0 0 0 0 0 ]
gap> Print("\n"); 

gap> Print(" DistanceCodeword\n");
 DistanceCodeword
gap> a := Codeword([0, 1, 2, 0, 1, 2]);
[ 0 1 2 0 1 2 ]
gap> b := NullWord(6, GF(3));
[ 0 0 0 0 0 0 ]
gap> DistanceCodeword(a, b);
4
gap> DistanceCodeword(b, a);
4
gap> DistanceCodeword(a, a);
0
gap> DistanceCodeword(b, b);
0
gap> Print("\n"); 

gap> Print(" WeightCodeword\n");
 WeightCodeword
gap> WeightCodeword(Codeword("22222"));
5
gap> WeightCodeword(NullWord(3));
0
gap> C := HammingCode(3);
a linear [7,4,3]1 Hamming (3,2) code over GF(2)
gap> Minimum(List(AsSSortedList(C){[2..Size(C)]}, WeightCodeword ) );
3
gap> Print("\n"); 

gap> Print(" ElementsCodes\n");
 ElementsCodes
gap> C := ElementsCode(["1100", "1010", "0001"], "example code", GF(2) );
a (4,3,1..4)2..4 example code over GF(2)
gap> MinimumDistance(C);
2
gap> C;
a (4,3,2)2..4 example code over GF(2)
gap> Print("\n"); 

gap> Print(" IsLinearCode\n");
 IsLinearCode
gap> L := Z(2)*[ [0,0,0], [1,0,0], [0,1,1], [1,1,1] ];
[ [ 0*Z(2), 0*Z(2), 0*Z(2) ], [ Z(2)^0, 0*Z(2), 0*Z(2) ], 
  [ 0*Z(2), Z(2)^0, Z(2)^0 ], [ Z(2)^0, Z(2)^0, Z(2)^0 ] ]
gap> C := ElementsCode( L, GF(2) );
a (3,4,1..3)1 user defined unrestricted code over GF(2)
gap> IsLinearCode( C );
true
gap> Print("\n"); 

gap> Print(" Decode\n");
 Decode
gap> R := ReedMullerCode( 1, 3 );
a linear [8,4,4]2 Reed-Muller (1,3) code over GF(2)
gap> w := [ 1, 0, 1, 1 ] * R;
[ 1 0 0 1 1 0 0 1 ]
gap> Decode( R, w );
[ 1 0 1 1 ]
gap> Decode( R, w + "10000000" ); 
[ 1 0 1 1 ]
gap> Print("\n"); 

gap> Print(" Codes =\n");
 Codes =
gap> M := [ [0, 0], [1, 0], [0, 1], [1, 1] ];
[ [ 0, 0 ], [ 1, 0 ], [ 0, 1 ], [ 1, 1 ] ]
gap> C1 := ElementsCode( M, GF(2) );
a (2,4,1..2)0 user defined unrestricted code over GF(2)
gap> M = C1;
false
gap> C2 := GeneratorMatCode( [ [1, 0], [0, 1] ], GF(2) );
a linear [2,2,1]0 code defined by generator matrix over GF(2)
gap> C1 = C2;
true
gap> ReedMullerCode( 1, 3 ) = HadamardCode( 8 );
true
gap> WholeSpaceCode( 5, GF(4) ) = WholeSpaceCode( 5, GF(2) );
false
gap> Print("\n"); 

gap> Print(" EvaluationCode \n");
 EvaluationCode 
gap> F:=GF(11);
GF(11)
gap> R := PolynomialRing(F,2);
GF(11)[x_1,x_2]
gap> indets := IndeterminatesOfPolynomialRing(R);
[ x_1, x_2 ]
gap> x:=indets[1];
x_1
gap> y:=indets[2];
x_2
gap> L:=[x^2*y,x*y,x^5,x^4,x^3,x^2,x,x^0];
[ x_1^2*x_2, x_1*x_2, x_1^5, x_1^4, x_1^3, x_1^2, x_1, Z(11)^0 ]
gap> Pts:=[ [ Z(11)^9, Z(11) ], [ Z(11)^8, Z(11) ], [ Z(11)^7, 0*Z(11) ],
> [ Z(11)^6, 0*Z(11) ], [ Z(11)^5, 0*Z(11) ], [ Z(11)^4, 0*Z(11) ],
> [ Z(11)^3, Z(11) ], [ Z(11)^2, 0*Z(11) ], [ Z(11), 0*Z(11) ],
> [ Z(11)^0, 0*Z(11) ], [ 0*Z(11), Z(11) ] ];
[ [ Z(11)^9, Z(11) ], [ Z(11)^8, Z(11) ], [ Z(11)^7, 0*Z(11) ], 
  [ Z(11)^6, 0*Z(11) ], [ Z(11)^5, 0*Z(11) ], [ Z(11)^4, 0*Z(11) ], 
  [ Z(11)^3, Z(11) ], [ Z(11)^2, 0*Z(11) ], [ Z(11), 0*Z(11) ], 
  [ Z(11)^0, 0*Z(11) ], [ 0*Z(11), Z(11) ] ]
gap> C:=EvaluationCode(Pts,L,R);
a linear [11,8,1..2]2..3  evaluation code over GF(11)
gap> Print("\n"); 

gap> Print(" DivisorOnAffineCurve \n");
 DivisorOnAffineCurve 
gap> F:=GF(11);
GF(11)
gap> R := PolynomialRing(F,2);
GF(11)[x_1,x_2]
gap> indets := IndeterminatesOfPolynomialRing(R);
[ x_1, x_2 ]
gap> x:=indets[1];
x_1
gap> y:=indets[2];
x_2
gap> crv:=AffineCurve(y^2-x^11+x,R);
rec( polynomial := -x_1^11+x_2^2+x_1, ring := GF(11)[x_1,x_2] )
gap> Pts:=AffinePointsOnCurve(y^2-x^11+x,R,F);
[ [ Z(11)^9, 0*Z(11) ], [ Z(11)^8, 0*Z(11) ], [ Z(11)^7, 0*Z(11) ], 
  [ Z(11)^6, 0*Z(11) ], [ Z(11)^5, 0*Z(11) ], [ Z(11)^4, 0*Z(11) ], 
  [ Z(11)^3, 0*Z(11) ], [ Z(11)^2, 0*Z(11) ], [ Z(11), 0*Z(11) ], 
  [ Z(11)^0, 0*Z(11) ], [ 0*Z(11), 0*Z(11) ] ]
gap> supp:=[Pts[1],Pts[2]];
[ [ Z(11)^9, 0*Z(11) ], [ Z(11)^8, 0*Z(11) ] ]
gap> D:=DivisorOnAffineCurve([1,-1],supp,crv);
rec( coeffs := [ 1, -1 ], 
  curve := rec( polynomial := -x_1^11+x_2^2+x_1, ring := GF(11)[x_1,x_2] ), 
  support := [ [ Z(11)^9, 0*Z(11) ], [ Z(11)^8, 0*Z(11) ] ] )
gap> Print("\n"); 

gap> Print(" Divisors On Affine Curves, 2 \n");
 Divisors On Affine Curves, 2 
gap> F:=GF(11);
GF(11)
gap> R1:=PolynomialRing(F,1);
GF(11)[x_1]
gap> var1:=IndeterminatesOfPolynomialRing(R1);
[ x_1 ]
gap> a:=var1[1];
x_1
gap> b:=X(F,var1);
x_2
gap> var2:=Concatenation(var1,[b]);
[ x_1, x_2 ]
gap> R2:=PolynomialRing(F,var2);
GF(11)[x_1,x_2]
gap> crvP1:=AffineCurve(b,R2);
rec( polynomial := x_2, ring := GF(11)[x_1,x_2] )
gap> div1:=DivisorOnAffineCurve([1,2,3,4],
>          [Z(11)^2,Z(11)^3,Z(11)^7,Z(11)],
>          crvP1);
rec( coeffs := [ 1, 2, 3, 4 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11)^2, Z(11)^3, Z(11)^7, Z(11) ] )
gap> DivisorDegree(div1);
10
gap> div2:=DivisorOnAffineCurve([1,2,3,4],
>          [Z(11),Z(11)^2,Z(11)^3,Z(11)^4],
>          crvP1);
rec( coeffs := [ 1, 2, 3, 4 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^2, Z(11)^3, Z(11)^4 ] )
gap> DivisorDegree(div2);
10
gap> div3:=DivisorAddition(div1,div2);
rec( coeffs := [ 5, 3, 5, 4, 3 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^2, Z(11)^3, Z(11)^4, Z(11)^7 ] )
gap> DivisorDegree(div3);
20
gap> DivisorIsEffective(div1);
true
gap> DivisorIsEffective(div2);
true
gap> ndiv1:=DivisorNegate(div1);
rec( coeffs := [ -1, -2, -3, -4 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11)^2, Z(11)^3, Z(11)^7, Z(11) ] )
gap> zdiv:=DivisorAddition(div1,ndiv1);
rec( coeffs := [ 0, 0, 0, 0 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^2, Z(11)^3, Z(11)^7 ] )
gap> DivisorIsZero(zdiv);
true
gap> div_gcd:=DivisorGCD(div1,div2);
rec( coeffs := [ 1, 1, 2, 0, 0 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^2, Z(11)^3, Z(11)^4, Z(11)^7 ] )
gap> div_lcm:=DivisorLCM(div1,div2);
rec( coeffs := [ 4, 2, 3, 4, 3 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^2, Z(11)^3, Z(11)^4, Z(11)^7 ] )
gap> DivisorDegree(div_gcd);
4
gap> DivisorDegree(div_lcm);
16
gap> DivisorEqual(div3,DivisorAddition(div_gcd,div_lcm));
true
gap> Print("\n"); 

gap> Print(" DivisorOfRationalFunctionP1 \n");
 DivisorOfRationalFunctionP1 
gap> F:=GF(11);
GF(11)
gap> R1:=PolynomialRing(F,1);
GF(11)[x_1]
gap> var1:=IndeterminatesOfPolynomialRing(R1);
[ x_1 ]
gap> a:=var1[1];
x_1
gap> b:=X(F,var1);
x_2
gap> var2:=Concatenation(var1,[b]);
[ x_1, x_2 ]
gap> R2:=PolynomialRing(F,var2);
GF(11)[x_1,x_2]
gap> pt:=Z(11);
Z(11)
gap> f:=RiemannRochSpaceBasisFunctionP1(pt,2,R2);
(Z(11)^0)/(x_1^2+Z(11)^7*x_1+Z(11)^2)
gap> Df:=DivisorOfRationalFunctionP1(f,R2);
rec( coeffs := [ -2 ], 
  curve := rec( polynomial := x_1, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11) ] )
gap> Df.support;
[ Z(11) ]
gap> F:=GF(11);
GF(11)
gap> R:=PolynomialRing(F,2);
GF(11)[x_1,x_2]
gap> vars:=IndeterminatesOfPolynomialRing(R);
[ x_1, x_2 ]
gap> a:=vars[1];
x_1
gap> b:=vars[2];
x_2
gap> f:=(a^4+Z(11)^6*a^3-a^2+Z(11)^7*a+Z(11)^0)/
>       (a^4+Z(11)^4*a^3+Z(11)*a^2+Z(11)^7*a+Z(11));
(x_1^4+Z(11)^6*x_1^3-x_1^2+Z(11)^7*x_1+Z(11)^0)/(x_1^4+Z(11)^4*x_1^3+Z(11)*x_1\
^2+Z(11)^7*x_1+Z(11))
gap> divf:=DivisorOfRationalFunctionP1(f,R);
rec( coeffs := [ 3, 1, -1, -3 ], 
  curve := rec( polynomial := x_1, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11), Z(11)^7, Z(11)^2, Z(11)^3 ] )
gap> denf:=DenominatorOfRationalFunction(f); RootsOfUPol(denf);
x_1^4+Z(11)^4*x_1^3+Z(11)*x_1^2+Z(11)^7*x_1+Z(11)
[ Z(11)^2, Z(11)^3, Z(11)^3, Z(11)^3 ]
gap> numf:=NumeratorOfRationalFunction(f); RootsOfUPol(numf);
x_1^4+Z(11)^6*x_1^3-x_1^2+Z(11)^7*x_1+Z(11)^0
[ Z(11)^7, Z(11), Z(11), Z(11) ]
gap> Print("\n"); 

gap> Print(" ActionMoebiusTransformationOnFunction\n");
 ActionMoebiusTransformationOnFunction
gap> F:=GF(11);
GF(11)
gap> R1:=PolynomialRing(F,1);
GF(11)[x_1]
gap> var1:=IndeterminatesOfPolynomialRing(R1);
[ x_1 ]
gap> a:=var1[1];
x_1
gap> b:=X(F,var1);
x_2
gap> var2:=Concatenation(var1,[b]);
[ x_1, x_2 ]
gap> R2:=PolynomialRing(F,var2);
GF(11)[x_1,x_2]
gap> crvP1:=AffineCurve(b,R2);
rec( polynomial := x_2, ring := GF(11)[x_1,x_2] )
gap> D:=DivisorOnAffineCurve([1,2,3,4],
>           [Z(11)^2,Z(11)^3,Z(11)^7,Z(11)],
>           crvP1);
rec( coeffs := [ 1, 2, 3, 4 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11)^2, Z(11)^3, Z(11)^7, Z(11) ] )
gap> A:=Z(11)^0*[[1,2],[1,4]];
[ [ Z(11)^0, Z(11) ], [ Z(11)^0, Z(11)^2 ] ]
gap> ActionMoebiusTransformationOnDivisorDefinedP1(A,D);
false
gap> A:=Z(11)^0*[[1,2],[3,4]];
[ [ Z(11)^0, Z(11) ], [ Z(11)^8, Z(11)^2 ] ]
gap> ActionMoebiusTransformationOnDivisorDefinedP1(A,D);
true
gap> ActionMoebiusTransformationOnDivisorP1(A,D);
rec( coeffs := [ 1, 2, 3, 4 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11)^5, Z(11)^6, Z(11)^8, Z(11)^7 ] )
gap> f:=MoebiusTransformation(A,R1);
(x_1+Z(11))/(Z(11)^8*x_1+Z(11)^2)
gap> ActionMoebiusTransformationOnFunction(A,f,R1);
-Z(11)^0+Z(11)^3*x_1^-1
gap> Print("\n"); 

gap> Print(" GoppaCodeClassical\n");
 GoppaCodeClassical
gap> F:=GF(11);
GF(11)
gap> R2:=PolynomialRing(F,2);
GF(11)[x_1,x_2]
gap> vars:=IndeterminatesOfPolynomialRing(R2);
[ x_1, x_2 ]
gap> a:=vars[1];
x_1
gap> b:=vars[2];
x_2
gap> cdiv:=[ 1, 2, -1, -2 ];
[ 1, 2, -1, -2 ]
gap> sdiv:=[ Z(11)^2, Z(11)^3, Z(11)^6, Z(11)^9 ];
[ Z(11)^2, Z(11)^3, Z(11)^6, Z(11)^9 ]
gap> crv:=rec(polynomial:=b,ring:=R2);
rec( polynomial := x_2, ring := GF(11)[x_1,x_2] )
gap> div:=DivisorOnAffineCurve(cdiv,sdiv,crv);
rec( coeffs := [ 1, 2, -1, -2 ], 
  curve := rec( polynomial := x_2, ring := GF(11)[x_1,x_2] ), 
  support := [ Z(11)^2, Z(11)^3, Z(11)^6, Z(11)^9 ] )
gap> pts:=Difference(Elements(GF(11)),div.support);
[ 0*Z(11), Z(11)^0, Z(11), Z(11)^4, Z(11)^5, Z(11)^7, Z(11)^8 ]
gap> C:=GoppaCodeClassical(div,pts);
a linear [7,2,1..6]4..5 code defined by generator matrix over GF(11)
gap> MinimumDistance(C);
6
gap> Print("\n"); 

gap> Print(" OnePointAGCode\n");
 OnePointAGCode
gap> F:=GF(11);
GF(11)
gap> R := PolynomialRing(F,2);
GF(11)[x_1,x_2]
gap> indets := IndeterminatesOfPolynomialRing(R);
[ x_1, x_2 ]
gap> x:=indets[1]; 
x_1
gap> y:=indets[2];
x_2
gap> P:=AffinePointsOnCurve(y^2-x^11+x,R,F);
[ [ Z(11)^9, 0*Z(11) ], [ Z(11)^8, 0*Z(11) ], [ Z(11)^7, 0*Z(11) ], 
  [ Z(11)^6, 0*Z(11) ], [ Z(11)^5, 0*Z(11) ], [ Z(11)^4, 0*Z(11) ], 
  [ Z(11)^3, 0*Z(11) ], [ Z(11)^2, 0*Z(11) ], [ Z(11), 0*Z(11) ], 
  [ Z(11)^0, 0*Z(11) ], [ 0*Z(11), 0*Z(11) ] ]
gap> C:=OnePointAGCode(y^2-x^11+x,P,15,R);
a linear [11,8,1..0]2..3  one-point AG code over GF(11)
gap> Cd := DualCode(C);
a linear [11,3,1..9]6..8 dual code
gap> MinimumDistance(Cd);
9
gap> Pts:=List([1,2,4,6,7,8,9,10,11],i->P[i]);
[ [ Z(11)^9, 0*Z(11) ], [ Z(11)^8, 0*Z(11) ], [ Z(11)^6, 0*Z(11) ], 
  [ Z(11)^4, 0*Z(11) ], [ Z(11)^3, 0*Z(11) ], [ Z(11)^2, 0*Z(11) ], 
  [ Z(11), 0*Z(11) ], [ Z(11)^0, 0*Z(11) ], [ 0*Z(11), 0*Z(11) ] ]
gap> C:=OnePointAGCode(y^2-x^11+x,Pts,10,R);
a linear [9,6,1..4]2..3  one-point AG code over GF(11)
gap> Cd := DualCode(C);
a linear [9,3,1..7]5..6 dual code
gap> MinimumDistance(Cd);
7
gap> Print("\n"); 

gap> Print(" Punctured Expurgated Augmented code\n");
 Punctured Expurgated Augmented code
gap> C1 := PuncturedCode( ReedMullerCode( 1, 4 ) );
a linear [15,5,7]5 punctured code
gap> C2 := BCHCode( 15, 7, GF(2) );
a cyclic [15,5,7]5 BCH code, delta=7, b=1 over GF(2)
gap> C2 = C1;
false
gap> p := CodeIsomorphism( C1, C2 );
(2,13,7,10,8,3,5,4,14)(12,15)
gap> C3 := PermutedCode( C1, p );
a linear [15,5,7]5 permuted code
gap> C2 = C3;
true
gap> C1 := HammingCode( 4 );
a linear [15,11,3]1 Hamming (4,2) code over GF(2)
gap> WeightDistribution( C1 );
[ 1, 0, 0, 35, 105, 168, 280, 435, 435, 280, 168, 105, 35, 0, 0, 1 ]
gap> L := Filtered( AsSSortedList(C1), i -> WeightCodeword(i) = 3 );
[ [ 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 ], [ 0 0 0 0 0 0 1 0 0 1 0 0 1 0 0 ], 
  [ 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 ], [ 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 ], 
  [ 0 0 0 0 0 1 0 0 0 0 1 0 1 0 0 ], [ 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 ], 
  [ 0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 ], [ 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 ], 
  [ 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 ], [ 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ], 
  [ 0 0 0 0 1 0 0 0 1 0 0 1 0 0 0 ], [ 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0 ], 
  [ 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 ], [ 0 0 0 1 0 0 0 0 0 1 0 0 0 1 0 ], 
  [ 0 0 0 1 0 0 0 0 1 0 0 0 1 0 0 ], [ 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 ], 
  [ 0 0 1 0 0 0 0 0 0 0 0 0 1 1 0 ], [ 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 ], 
  [ 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 ], [ 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 ], 
  [ 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 ], [ 0 0 1 1 0 0 1 0 0 0 0 0 0 0 0 ], 
  [ 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 ], [ 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0 ], 
  [ 0 1 0 0 0 0 0 0 1 0 1 0 0 0 0 ], [ 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 ], 
  [ 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 ], [ 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 ], 
  [ 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 ], [ 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0 ], 
  [ 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0 ], [ 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 ], 
  [ 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 ], [ 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 ], 
  [ 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 ] ]
gap> C2 := ExpurgatedCode( C1, L );
a linear [15,4,3..4]5..11 code, expurgated with 7 word(s)
gap> WeightDistribution( C2 );
[ 1, 0, 0, 0, 14, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
gap> C31 := ReedMullerCode( 1, 3 );
a linear [8,4,4]2 Reed-Muller (1,3) code over GF(2)
gap> C32 := AugmentedCode(C31,["00000011","00000101","00010001"]);
a linear [8,7,1..2]1 code, augmented with 3 word(s)
gap> C32 = ReedMullerCode( 2, 3 );
true
gap> C1 := CordaroWagnerCode(6);
a linear [6,2,4]2..3 Cordaro-Wagner code over GF(2)
gap> Codeword( [0,0,1,1,1,1] ) in C1;
true
gap> C2 := AugmentedCode( C1 );
a linear [6,3,1..2]2..3 code, augmented with 1 word(s)
gap> Codeword( [1,1,0,0,0,0] ) in C2;
true
gap> Print("\n"); 

gap> Print(" Decoding with a Hamming code\n");
 Decoding with a Hamming code
gap> ham:=HammingCode(3,GF(2));
a linear [7,4,3]1 Hamming (3,2) code over GF(2)
gap> c:=Random(ham);;
gap> c2:=Codeword("1000000");
[ 1 0 0 0 0 0 0 ]
gap> c2:= c+c2;;
gap> d:=Decode(ham,c);;
gap> d2:=Decode(ham,c2);;
gap> d = d2;
true
gap> Print("\n"); 

gap> Print(" Decoding with a BCH code\n");
 Decoding with a BCH code
gap> bch:=BCHCode(15,1,5,GF(2));
a cyclic [15,7,5]3..5 BCH code, delta=5, b=1 over GF(2)
gap> c:=Random(bch);;
gap> i:=InformationWord(bch,c);;
gap> c2:=Codeword("110000000000000");
[ 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 ]
gap> c2:= c+c2;;
gap> j:=Decode(bch,c);;
gap> (i=j);
true
gap> j:=Decode(bch,c2);;
gap> (i=j);
true
gap> Print("\n"); 

gap> Print(" direct sum code\n");
 direct sum code
gap> C1 := ElementsCode( [ [1,0], [4,5] ], GF(7) );
a (2,2,1..2)0..2 user defined unrestricted code over GF(7)
gap> C2 := ElementsCode( [ [0,0,0], [3,3,3] ], GF(7) );
a (3,2,1..3)0..3 user defined unrestricted code over GF(7)
gap> D := DirectSumCode(C1, C2);
a (5,4,1..2)0..5 direct sum code
gap> AsSSortedList(D);
[ [ 1 0 0 0 0 ], [ 1 0 3 3 3 ], [ 4 5 0 0 0 ], [ 4 5 3 3 3 ] ]
gap> D = C1 + C2;   # addition = direct sum
true
gap> Print("\n"); 

gap> Print(" lower bound min dist\n");
 lower bound min dist
gap> C := BCHCode( 45, 7 );
a cyclic [45,23,7..9]6..16 BCH code, delta=7, b=1 over GF(2)
gap> LowerBoundMinimumDistance( C );
7
gap> LowerBoundMinimumDistance( 45, 23, GF(2) );
10
gap> Print("\n"); 

gap> Print(" GV lower bound on size of linear code\n");
 GV lower bound on size of linear code
gap> LowerBoundGilbertVarshamov(25,10,2);
16
gap> Print("\n"); 

gap> Print(" MatrixRepresentationOnRiemannRochSpaceP1\n");
 MatrixRepresentationOnRiemannRochSpaceP1
gap> F:=GF(11);
GF(11)
gap> R1:=PolynomialRing(F,1);
GF(11)[x_1]
gap> var1:=IndeterminatesOfPolynomialRing(R1);
[ x_1 ]
gap> a:=var1[1];
x_1
gap> b:=X(F,var1);
x_2
gap> var2:=Concatenation(var1,[b]);
[ x_1, x_2 ]
gap> R2:=PolynomialRing(F,var2);
GF(11)[x_1,x_2]
gap> crvP1:=AffineCurve(b,R2);;
gap> D:=DivisorOnAffineCurve([1,1,1,4],
>                         [Z(11)^2,Z(11)^3,Z(11)^7,Z(11)],
>                         crvP1);;
gap> agp:=DivisorAutomorphismGroupP1(div); ## slow
<matrix group with 10 generators>
gap> g:=Random(agp);;
gap> rho:=MatrixRepresentationOnRiemannRochSpaceP1(g,D);
[ [ Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11) ], 
  [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0 ] ]
gap> Display(rho);
  1  .  .  .  .  .  .  .
  .  1  .  .  .  .  .  .
  .  .  1  .  .  .  .  .
  .  .  .  1  .  .  .  .
  .  .  .  .  1  .  .  .
  .  .  .  .  .  1  .  .
  .  .  .  .  .  .  1  .
  .  .  .  .  .  .  .  1
gap> Eigenvalues(F,rho);
[ Z(11)^0 ]
gap> charpoly:=CharacteristicPolynomial(rho);
x_1^8+Z(11)^8*x_1^7+Z(11)^9*x_1^6-x_1^5+Z(11)^2*x_1^4-x_1^3+Z(11)^9*x_1^2+Z(11\
)^8*x_1+Z(11)^0
gap> Factors(charpoly);
[ x_1-Z(11)^0, x_1-Z(11)^0, x_1-Z(11)^0, x_1-Z(11)^0, x_1-Z(11)^0, 
  x_1-Z(11)^0, x_1-Z(11)^0, x_1-Z(11)^0 ]
gap> JordanDecomposition(rho);
[ [ [ Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ]
        , [ 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), Z(11)^0, 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          Z(11)^0 ] ], 
  [ [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11) ]
        , [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ], 
      [ 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 0*Z(11), 
          0*Z(11) ] ] ]
gap> Print("\n"); 

gap> Print(" UUVCode\n");
 UUVCode
gap> C1 := EvenWeightSubcode(WholeSpaceCode(4, GF(2)));
a cyclic [4,3,2]1 even weight subcode
gap> C2 := RepetitionCode(4, GF(2));
a cyclic [4,1,4]2 repetition code over GF(2)
gap> R := UUVCode(C1, C2);
a linear [8,4,4]2 U|U+V construction code
gap> R = ReedMullerCode(1,3);
true
gap> Print("\n"); 

gap> Print(" LexiCode\n");
 LexiCode
gap> C := LexiCode( 4, 3, GF(5) );
a (4,17,3..4)2..4 lexicode over GF(5)
gap> IsLinearCode(C);
false
gap> B := [ [Z(2)^0, 0*Z(2), 0*Z(2)], [Z(2)^0, Z(2)^0, 0*Z(2)] ];
[ [ Z(2)^0, 0*Z(2), 0*Z(2) ], [ Z(2)^0, Z(2)^0, 0*Z(2) ] ]
gap> C := LexiCode( B, 2, GF(2) );
a linear [3,1,2]1..2 lexicode over GF(2)
gap> IsLinearCode(C);
true
gap> Print("\n"); 

gap> Print(" GeneratorMatCode\n");
 GeneratorMatCode
gap> G := Z(3)^0 * [[1,0,1,2,0],[0,1,2,1,1],[0,0,1,2,1]];
[ [ Z(3)^0, 0*Z(3), Z(3)^0, Z(3), 0*Z(3) ], 
  [ 0*Z(3), Z(3)^0, Z(3), Z(3)^0, Z(3)^0 ], 
  [ 0*Z(3), 0*Z(3), Z(3)^0, Z(3), Z(3)^0 ] ]
gap> C1 := GeneratorMatCode( G, GF(3) );
a linear [5,3,1..2]1..2 code defined by generator matrix over GF(3)
gap> C2 := GeneratorMatCode( IdentityMat( 5, GF(2) ), GF(2) );
a linear [5,5,1]0 code defined by generator matrix over GF(2)
gap> C3 := GeneratorMatCode(List(AsSSortedList(NordstromRobinsonCode()),
>        x ->VectorCodeword(x)),GF(2));
a linear [16,11,1..4]2 code defined by generator matrix over GF(2)
gap> Print("\n"); 

gap> Print(" CheckMatCode\n");
 CheckMatCode
gap> H := Z(3)^0 * [[1,0,1,2,0],[0,1,2,1,1],[0,0,1,2,1]];
[ [ Z(3)^0, 0*Z(3), Z(3)^0, Z(3), 0*Z(3) ], 
  [ 0*Z(3), Z(3)^0, Z(3), Z(3)^0, Z(3)^0 ], 
  [ 0*Z(3), 0*Z(3), Z(3)^0, Z(3), Z(3)^0 ] ]
gap> C1 := CheckMatCode( H, GF(3) );
a linear [5,2,1..2]2..3 code defined by check matrix over GF(3)
gap> CheckMat(C1);
[ [ Z(3)^0, 0*Z(3), Z(3)^0, Z(3), 0*Z(3) ], 
  [ 0*Z(3), Z(3)^0, Z(3), Z(3)^0, Z(3)^0 ], 
  [ 0*Z(3), 0*Z(3), Z(3)^0, Z(3), Z(3)^0 ] ]
gap> C2 := CheckMatCode( IdentityMat( 5, GF(2) ), GF(2) );
a cyclic [5,0,5]5 code defined by check matrix over GF(2)
gap> Print("\n"); 

gap> Print(" AlternantCode\n");
 AlternantCode
gap> Y := [ 1, 1, 1, 1, 1, 1, 1];
[ 1, 1, 1, 1, 1, 1, 1 ]
gap> a := PrimitiveUnityRoot( 2, 7 );
Z(2^3)
gap> alpha := List( [0..6], i -> a^i );
[ Z(2)^0, Z(2^3), Z(2^3)^2, Z(2^3)^3, Z(2^3)^4, Z(2^3)^5, Z(2^3)^6 ]
gap> C := AlternantCode( 2, Y, alpha, GF(8) );
a linear [7,3,3..4]3..4 alternant code over GF(8)
gap> Print("\n"); 

gap> Print(" RandomLinearCode\n");
 RandomLinearCode
gap> C := RandomLinearCode( 15, 4, GF(3) );; 
gap> WordLength(C); 
15
gap> Dimension(C); 
4
gap> C := RandomLinearCode( 35, 20, GF(3) );; 
gap> WordLength(C); 
35
gap> Dimension(C); 
20
gap> Print("\n"); 

gap> Print(" EvaluationBivariateCode\n");
 EvaluationBivariateCode
gap> q:=4;
4
gap> F:=GF(q^2);
GF(2^4)
gap> R:=PolynomialRing(F,2);
GF(2^4)[x_1,x_2]
gap> vars:=IndeterminatesOfPolynomialRing(R);
[ x_1, x_2 ]
gap> x:=vars[1];
x_1
gap> y:=vars[2];
x_2
gap> crv:=AffineCurve(y^q+y-x^(q+1),R);
rec( polynomial := x_1^5+x_2^4+x_2, ring := GF(2^4)[x_1,x_2] )
gap> L:=[ x^0, x, x^2*y^-1 ];
[ Z(2)^0, x_1, x_1^2/x_2 ]
gap> Pts:=AffinePointsOnCurve(crv.polynomial,crv.ring,F);
[ [ Z(2^4)^12, Z(2^4)^4 ], [ Z(2^4)^12, Z(2^4)^8 ], [ Z(2^4)^12, Z(2^4) ], 
  [ Z(2^4)^12, Z(2^4)^2 ], [ Z(2^2)^2, Z(2^4)^7 ], [ Z(2^2)^2, Z(2^4)^13 ], 
  [ Z(2^2)^2, Z(2^4)^9 ], [ Z(2^2)^2, Z(2^4)^6 ], [ Z(2^4)^7, Z(2^4)^7 ], 
  [ Z(2^4)^7, Z(2^4)^13 ], [ Z(2^4)^7, Z(2^4)^9 ], [ Z(2^4)^7, Z(2^4)^6 ], 
  [ Z(2^4)^4, Z(2^4)^7 ], [ Z(2^4)^4, Z(2^4)^13 ], [ Z(2^4)^4, Z(2^4)^9 ], 
  [ Z(2^4)^4, Z(2^4)^6 ], [ Z(2^4)^13, Z(2^4)^7 ], [ Z(2^4)^13, Z(2^4)^13 ], 
  [ Z(2^4)^13, Z(2^4)^9 ], [ Z(2^4)^13, Z(2^4)^6 ], [ Z(2^4)^8, Z(2^4)^12 ], 
  [ Z(2^4)^8, Z(2^4)^14 ], [ Z(2^4)^8, Z(2^4)^11 ], [ Z(2^4)^8, Z(2^4)^3 ], 
  [ Z(2^4)^14, Z(2^4)^12 ], [ Z(2^4)^14, Z(2^4)^14 ], 
  [ Z(2^4)^14, Z(2^4)^11 ], [ Z(2^4)^14, Z(2^4)^3 ], [ Z(2)^0, Z(2^4)^4 ], 
  [ Z(2)^0, Z(2^4)^8 ], [ Z(2)^0, Z(2^4) ], [ Z(2)^0, Z(2^4)^2 ], 
  [ Z(2^4)^11, Z(2^4)^12 ], [ Z(2^4)^11, Z(2^4)^14 ], 
  [ Z(2^4)^11, Z(2^4)^11 ], [ Z(2^4)^11, Z(2^4)^3 ], [ Z(2^2), Z(2^4)^12 ], 
  [ Z(2^2), Z(2^4)^14 ], [ Z(2^2), Z(2^4)^11 ], [ Z(2^2), Z(2^4)^3 ], 
  [ Z(2^4)^9, Z(2^4)^4 ], [ Z(2^4)^9, Z(2^4)^8 ], [ Z(2^4)^9, Z(2^4) ], 
  [ Z(2^4)^9, Z(2^4)^2 ], [ Z(2^4), Z(2^4)^7 ], [ Z(2^4), Z(2^4)^13 ], 
  [ Z(2^4), Z(2^4)^9 ], [ Z(2^4), Z(2^4)^6 ], [ Z(2^4)^6, Z(2^4)^4 ], 
  [ Z(2^4)^6, Z(2^4)^8 ], [ Z(2^4)^6, Z(2^4) ], [ Z(2^4)^6, Z(2^4)^2 ], 
  [ Z(2^4)^2, Z(2^4)^12 ], [ Z(2^4)^2, Z(2^4)^14 ], [ Z(2^4)^2, Z(2^4)^11 ], 
  [ Z(2^4)^2, Z(2^4)^3 ], [ Z(2^4)^3, Z(2^4)^4 ], [ Z(2^4)^3, Z(2^4)^8 ], 
  [ Z(2^4)^3, Z(2^4) ], [ Z(2^4)^3, Z(2^4)^2 ], [ 0*Z(2), Z(2^2)^2 ], 
  [ 0*Z(2), Z(2)^0 ], [ 0*Z(2), Z(2^2) ], [ 0*Z(2), 0*Z(2) ] ]
gap> C1:=EvaluationBivariateCode(Pts,L,crv); 


 Automatically removed the following 'bad' points (either a pole or not on the\
 curve):
[ [ 0*Z(2), 0*Z(2) ] ]

a linear [63,3,1..60]51..59  evaluation code over GF(16)
gap> P:=Difference(Pts,[[ 0*Z(2^4)^0, 0*Z(2)^0 ]]);
[ [ 0*Z(2), Z(2)^0 ], [ 0*Z(2), Z(2^2) ], [ 0*Z(2), Z(2^2)^2 ], 
  [ Z(2)^0, Z(2^4) ], [ Z(2)^0, Z(2^4)^2 ], [ Z(2)^0, Z(2^4)^4 ], 
  [ Z(2)^0, Z(2^4)^8 ], [ Z(2^2), Z(2^4)^3 ], [ Z(2^2), Z(2^4)^11 ], 
  [ Z(2^2), Z(2^4)^12 ], [ Z(2^2), Z(2^4)^14 ], [ Z(2^2)^2, Z(2^4)^6 ], 
  [ Z(2^2)^2, Z(2^4)^7 ], [ Z(2^2)^2, Z(2^4)^9 ], [ Z(2^2)^2, Z(2^4)^13 ], 
  [ Z(2^4), Z(2^4)^6 ], [ Z(2^4), Z(2^4)^7 ], [ Z(2^4), Z(2^4)^9 ], 
  [ Z(2^4), Z(2^4)^13 ], [ Z(2^4)^2, Z(2^4)^3 ], [ Z(2^4)^2, Z(2^4)^11 ], 
  [ Z(2^4)^2, Z(2^4)^12 ], [ Z(2^4)^2, Z(2^4)^14 ], [ Z(2^4)^3, Z(2^4) ], 
  [ Z(2^4)^3, Z(2^4)^2 ], [ Z(2^4)^3, Z(2^4)^4 ], [ Z(2^4)^3, Z(2^4)^8 ], 
  [ Z(2^4)^4, Z(2^4)^6 ], [ Z(2^4)^4, Z(2^4)^7 ], [ Z(2^4)^4, Z(2^4)^9 ], 
  [ Z(2^4)^4, Z(2^4)^13 ], [ Z(2^4)^6, Z(2^4) ], [ Z(2^4)^6, Z(2^4)^2 ], 
  [ Z(2^4)^6, Z(2^4)^4 ], [ Z(2^4)^6, Z(2^4)^8 ], [ Z(2^4)^7, Z(2^4)^6 ], 
  [ Z(2^4)^7, Z(2^4)^7 ], [ Z(2^4)^7, Z(2^4)^9 ], [ Z(2^4)^7, Z(2^4)^13 ], 
  [ Z(2^4)^8, Z(2^4)^3 ], [ Z(2^4)^8, Z(2^4)^11 ], [ Z(2^4)^8, Z(2^4)^12 ], 
  [ Z(2^4)^8, Z(2^4)^14 ], [ Z(2^4)^9, Z(2^4) ], [ Z(2^4)^9, Z(2^4)^2 ], 
  [ Z(2^4)^9, Z(2^4)^4 ], [ Z(2^4)^9, Z(2^4)^8 ], [ Z(2^4)^11, Z(2^4)^3 ], 
  [ Z(2^4)^11, Z(2^4)^11 ], [ Z(2^4)^11, Z(2^4)^12 ], 
  [ Z(2^4)^11, Z(2^4)^14 ], [ Z(2^4)^12, Z(2^4) ], [ Z(2^4)^12, Z(2^4)^2 ], 
  [ Z(2^4)^12, Z(2^4)^4 ], [ Z(2^4)^12, Z(2^4)^8 ], [ Z(2^4)^13, Z(2^4)^6 ], 
  [ Z(2^4)^13, Z(2^4)^7 ], [ Z(2^4)^13, Z(2^4)^9 ], [ Z(2^4)^13, Z(2^4)^13 ], 
  [ Z(2^4)^14, Z(2^4)^3 ], [ Z(2^4)^14, Z(2^4)^11 ], [ Z(2^4)^14, Z(2^4)^12 ],
  [ Z(2^4)^14, Z(2^4)^14 ] ]
gap> C2:=EvaluationBivariateCodeNC(P,L,crv); 
a linear [63,3,1..60]51..59  evaluation code over GF(16)
gap> C3:=EvaluationCode(P,L,R);
a linear [63,3,1..56]51..59  evaluation code over GF(16)
gap> MinimumDistance(C1);
56
gap> MinimumDistance(C2);
56
gap> MinimumDistance(C3);
56
gap> STOP_TEST( "guava.tst", 10000 );
Guava installation tests
GAP4stones: 2
