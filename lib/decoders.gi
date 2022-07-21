#############################################################################
##
#A  decoders.gi             GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##                                                              &David Joyner
##  This file contains functions for decoding codes
##
## Decodeword (unrestricted) modified 11-3-2004
## Decodeword (linear) created 10-2004
## Hamming, permutation, and BCH decoders moved into this file 10-2004
## GeneralizedReedSolomonDecoderGao added 11-2004
## GeneralizedReedSolomonDecoder added 11-2004
## bug fix in GRS decoder 11-29-2004
## added GeneralizedReedSolomonListDecoder and GRS<functions>, 12-2004
## added PermutationDecodeNC, CyclicDecoder 5-2005
## revisions to Decodeword, 11-2005 (fixed bug spotted by Cayanne McFarlane)
## 1-2006: added bit flip decoder
## 7-2007: Fixed several bugs in CyclicDecoder found by
##             Punarbasu Purkayastha <ppurka@umd.edu>
## 2009-3: Bugfix for Decodeword (J. Fields and wdj)
##


#############################################################################
##
#F  Decode( <C>, <v> )  . . . . . . . . .  decodes the vector(s) v from <C>
##
##  v can be a "codeword" or a list of "codeword"s
##

InstallMethod(Decode, "method for unrestricted code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C, v)
    local c;
    if v in C then
        return Codeword(v, C);
    fi;
    c := Codeword(v, C);
    if HasSpecialDecoder(C) then
        return InformationWord(C, SpecialDecoder(C)(C, c) );
    elif IsCyclicCode(C) or IsLinearCode(C) then
        return Decode(C, c);
    else
        Error("no decoder present");
    fi;
end);

InstallOtherMethod(Decode,
    "method for unrestricted code, list of codewords",
    true, [IsCode, IsList], 0,
function(C, L)
    local i;
    return List(L, i->Decode(C, i));
end);

InstallMethod(Decode, "method for linear code, codeword", true,
    [IsLinearCode, IsCodeword], 0,
function(C, v)
    local ok, c, S, syn, index, corr, Gt, i, x, F;
    if v in C then
        return InformationWord(C,v);
    fi;
    c := Codeword(v, C);
    if HasSpecialDecoder(C) then
        return InformationWord(C, SpecialDecoder(C)(C, c) );
    fi;
    F := LeftActingDomain(C);
    S := SyndromeTable(C);
    syn := Syndrome(C, c);
    ok := false;
    for index in [1..Length(S)] do
        if IsBound(S[index]) and S[index][2] = syn then
           ok := true;
           break;
        fi;
    od;
    if not ok then  # this should never happen!
       Error("In Decodeword: index not found");
    fi;
#This is a hack.  The subtraction operation for codewords is causing an error
#and rather than trying to understand the method selection process, I'm brute-
#forcing things...

#    corr := VectorCodeword(c - S[index][1]);   # correct codeword
    corr := VectorCodeword(c) - VectorCodeword(S[index][1]);
    x := SolutionMat(GeneratorMat(C), corr);
    return Codeword(x,LeftActingDomain(C));     # correct "message"
end);



#############################################################################
##
#F  Decodeword( <C>, <v> )  . . . . . . .  decodes the vector(s) v from <C>
##
##  v can be a "codeword" or a list of "codeword"s
##

#nearest neighbor
InstallMethod(Decodeword, "method for unrestricted code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C, v)
    local r, c, Cwords, NearbyWords, dist;
    if v in C then
        return v;
    fi;
    r := Codeword(v, C);
    if r in C then
        return r;
    fi;
    if HasSpecialDecoder(C) then
        return SpecialDecoder(C)(C, r);
    elif IsCyclicCode(C) or IsLinearCode(C) then
        return Decodeword(C, r);
    fi;
    dist:=Int((MinimumDistance(C)-1)/2);
    Cwords:=Elements(C);
    NearbyWords:=[];
    for c in Cwords do
        if WeightCodeword(r-c) <= dist then
            NearbyWords:=Concatenation(NearbyWords,[r]);
        fi;
    od;
    return NearbyWords;
end);


InstallOtherMethod(Decodeword,
    "method for unrestricted code, list of codewords",
    true, [IsCode, IsList], 0,
function(C, L)
    local i;
    return List(L, i->Decodeword(C, i));
end);

#syndrome decoding
InstallMethod(Decodeword, "method for linear code, codeword", true,
    [IsLinearCode, IsCodeword], 0,
function(C, v)
    local ok, c, c0, S, syn, index, corr, Gt, i, x, F;
    if v in C then
        return v;
    fi;
    c := Codeword(v, C);
    if HasSpecialDecoder(C) then
        c0:=SpecialDecoder(C)(C, c);
        if Size(c0) = Dimension(C) then
            return Codeword(c0*C);
        fi;
        if Size(c0) = Size(c) then
            return Codeword(c0);
        fi;
        return c0;
    fi;
    F := LeftActingDomain(C);
    S := SyndromeTable(C);
    syn := Syndrome(C, c);
    ok := false;
    for index in [1..Length(S)] do
        if IsBound(S[index]) and S[index][2] = syn then
           ok := true;
           break;
        fi;
    od;
    if not ok then  # this should never happen!
       Error("In Decodeword: index not found");
    fi;
    corr := VectorCodeword(c - S[index][1]);    # correct codeword
    return Codeword(corr,F);
end);


##################################################################
##
##  PermutationDecode( <C>, <v> ) -  decodes the vector v  to <C>
##
##   Uses Leon's AutomorphismGroup in the binary case,
##   PermutationAutomorphismGroup in the non-binary case,
##   performs permutation decoding when possible.
##   Returns original vector and prints "fail" when not possible.
##

InstallMethod(PermutationDecode, "attribute method for linear codes", true,
    [IsLinearCode,IsList], 0,
function(C,v)
 #C is a linear [n,k,d] code,
 #v is a vector with <=(d-1)/2 errors
local M,G,perm,F,P,t,p0,p,pc,i,k,pv,c,H,d,G0,H0;
 G:=GeneratorMat(C);
 H:=CheckMat(C);
 d:=MinimumDistance(C);
 k:=Dimension(C);
 G0 := List(G, ShallowCopy);
 perm:=PutStandardForm(G0);
 H0 := List(H, ShallowCopy);
 PutStandardForm(H0,false);
 F:=LeftActingDomain(C);
 if F=GF(2) then
   P:=AutomorphismGroup(C);
  else
   P:=PermutationAutomorphismGroup(C);
 fi;
 t:=Int((d-1)/2);
 p0:=0;
 if WeightCodeword(H0*v)=0 then return(v); fi;
 for p in P do
  pv:=Permuted(v,p);
  if WeightCodeword(Codeword(H0*pv))<=t then
    p0:=p;
    break;
  fi;
 od;
 if p0=0 then Print("fail \n"); return(v); fi;
 pc:=TransposedMat(G0)*List([1..k],i->pv[i]);
 c:=Permuted(pc,p0^(-1));
 return Codeword(Permuted(c,perm));
end);


##################################################################
##
##
##  PermutationDecodeNC( <C>, <v>, <P> ) -  decodes the
##                                vector v  to <C>
##
##   Performs permutation decoding when possible.
##   Returns original vector and prints "fail" when not possible.
##   NC version does Not Compute the aut gp so one must
##   input the permutation automorphism group
##   <P> subset SymmGp(n), n=wordlength(<C>)
##
####  wdj,2-7-2005

InstallMethod(PermutationDecodeNC, "attribute method for linear codes", true,
    [IsLinearCode,IsCodeword,IsGroup], 0,
function(C,v,P)
 #C is a linear [n,k,d] code,
 #v is a vector with <=(d-1)/2 errors
local M,G,G0, perm,F,t,p0,p,pc,i,k,pv,c,H,H0, d;
 G:=GeneratorMat(C);
 H:=CheckMat(C);
 d:=MinimumDistance(C);
 k:=Dimension(C);
 G0 := List(G, ShallowCopy);
 perm:=PutStandardForm(G0);
 H0 := List(H, ShallowCopy);
 PutStandardForm(H0,false);
 F:=LeftActingDomain(C);
 t:=Int((d-1)/2);
 p0:=0;
 if WeightCodeword(H0*v)=0 then return(v); fi;
 for p in P do
  pv:=Permuted(v,p);
  if WeightCodeword(Codeword(H0*pv))<=t then
    p0:=p;
#   Print(p0," = p0 \n",pv,"\n",H*pv,"\n");
    break;
  fi;
 od;
 if p0=0 then Print("fail \n"); return(v); fi;
 pc:=TransposedMat(G0)*List([1..k],i->pv[i]);
 c:=Permuted(pc,p0^(-1));
 return Codeword(Permuted(c,perm));
end);

#############################################################################
##
#F  CyclicDecoder( <C>, <w> )  . . . . . . . . . . . . decodes cyclic codes
##
InstallMethod(CyclicDecoder, "method for cyclic code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C,w)
local d, g, wpol, s, ds, cpol, cc, c, i, m, e, x, n, ccc, r;
 if not(IsCyclicCode(C)) then
   Error("\n\n Code must be cyclic");
 fi;
 if Codeword(w) in C then return Codeword(w); fi; ## bug fix 7-6-2007
 n:=WordLength(C);
 d:=MinimumDistance(C);
 g:=GeneratorPol(C);
 x:=IndeterminateOfUnivariateRationalFunction(g);
 wpol:=PolyCodeword(w);
 for i in [0..(n-1)] do
   s:=x^i*wpol mod g;
   ds:=DegreeOfLaurentPolynomial(s);
   if ds<Int((d-1)/2) then
     m:=i;
     e:=x^(n-m)*s mod (x^n-1);
     cpol:=wpol-e;
     cc:=CoefficientsOfUnivariatePolynomial(cpol);
     r:=Length(cc);
     ccc:=Concatenation(cc,List([1..(n-r)],k-> Zero(LeftActingDomain(C)) ));
     c:=Codeword(ccc);
     #return InformationWord( C, c );
     return c;
   fi;
 od;
 return "fail";
end);

#############################################################################
##
#F  BCHDecoder( <C>, <r> )  . . . . . . . . . . . . . . . . decodes BCH codes
##
InstallMethod(BCHDecoder, "method for code, codeword", true,
    [IsCode, IsCodeword], 0,
function (C, r)
    local F, q, n, m, ExtF, x, a, t, ri_1, ri, rnew, si_1, si, snew,
          ti_1, ti, qi, sigma, i, cc, cl, mp, ErrorLocator, zero,
          Syndromes, null, pol, ExtSize, ErrorEvaluator, Fp;
    F := LeftActingDomain(C);
    q := Size(F);
    n := WordLength(C);
    m := OrderMod(q,n);
    t := QuoInt(DesignedDistance(C) - 1, 2);
    ExtF := GF(q^m);
    x := Indeterminate(ExtF);
    a := PrimitiveUnityRoot(q,n);
    zero := Zero(ExtF);
    r := PolyCodeword(Codeword(r, n, F));
    if Value(GeneratorPol(C), a) <> zero then
        return Decode(C, r);  ##LR - inf loop !!!
    fi;
    # Calculate syndrome: this simple line is faster than using minimal pols.
    Syndromes :=  List([1..2*QuoInt(DesignedDistance(C) - 1,2)],
                       i->Value(r, a^i));
    if Maximum(Syndromes) = Zero(F) then # no errors
        return Codeword(r mod (x^n-1), C);
    fi;
    # Use Euclidean algorithm:
    ri_1 := x^(2*t);
    ri := LaurentPolynomialByCoefficients(
            ElementsFamily(FamilyObj(ExtF)),
            Syndromes, 0);
    rnew := ShallowCopy(ri);
    si_1 := x^0; si := 0*x; snew := 0*x;
    ti_1 := 0*x; ti := x^0; sigma := x^0;
    while Degree(rnew) >= t do
        rnew := (ri_1 mod ri);
        qi := (ri_1 - rnew) / ri;
        snew := si_1 - qi*si;
        sigma := ti_1 - qi*ti;
        ri_1 := ri; ri := rnew;
        si_1 := si; si := snew;
        ti_1 := ti; ti := sigma;
    od;
    # Chien search for the zeros of error locator polynomial:
    ErrorLocator := [];
    null := a^0;
    ExtSize := q^m-1;
    for i in [0..ExtSize-1] do
        if Value(sigma, null) = zero then
            AddSet(ErrorLocator, (ExtSize-i) mod n);
        fi;
        null := null * a;
    od;
    # And decode:
    if Length(ErrorLocator) = 0 then
        Error("not decodable");
    fi;
    x := Indeterminate(F);
    if q = 2 then # error locator is not necessary
        pol := Sum(List([1..Length(ErrorLocator)], i->x^ErrorLocator[i]));
        return Codeword((r - pol) mod (x^n-1), C);
    else
        pol := Derivative(sigma);
        Fp := One(F)*(x^n-1);
        #Print(ErrorLocator, "\n");
        ErrorEvaluator := List(ErrorLocator,i->
                              Value(rnew,a^-i)/Value(pol, a^-i));
        pol := Sum(List([1..Length(ErrorLocator)], i->
                       -ErrorEvaluator[i]*x^ErrorLocator[i]));
        return  Codeword((r - pol) mod (x^n-1) , C);
    fi;
end);

#############################################################################
##
#F  HammingDecoder( <C>, <r> )  . . . . . . . . . . . . decodes Hamming codes
##
##  Generator matrix must have all unit columns
##
InstallMethod(HammingDecoder, "method for code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C, r)
    local H, S,p, F, fac, e,z,x,ind, i,Sf;
    S := VectorCodeword(Syndrome(C,r));
    r := ShallowCopy(VectorCodeword(r));
    F := LeftActingDomain(C);
    p := PositionProperty(S, s->s<>Zero(F));
    if p <> fail then
        z := Z(Characteristic(S[p]))^0;
        if z = S[p] then
            fac := One(F);
        else
            fac := S[p]/z;
        fi;
        Sf := S/fac;
        H := CheckMat(C);
        ind := [1..WordLength(C)];
        for i in [1..Redundancy(C)] do
            ind := Filtered(ind, j-> H[i][j] = Sf[i]);
        od;
        e := ind[1];
        r[e] := r[e]-fac;     # correct error
    fi;
    #x := SolutionMat(GeneratorMat(C), r);
    #return Codeword(x);
    return Codeword(r, C);
end);

#############################################################################
##
#F  GeneralizedReedSolomonDecoderGao( <C>, <v> )   . . decodes
##                                           generalized Reed-Solomon codes
##                                           using S. Gao's method
##
InstallMethod(GeneralizedReedSolomonDecoderGao,"method for code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C,vec)
 local vars,a,b,n,i,g0,g1,geea,u,q,v,r,g,f,F,R,x,k,GcdExtEuclideanUntilBound;
 if C!.name<>" generalized Reed-Solomon code" then
   Error("\N This method only applies to GRS codes.\n");
 fi;

GcdExtEuclideanUntilBound:=function(F,f,g,d,R)
## S Gao's version
## R is a poly ring
local vars,u,v,r,q,i,num,x;
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1]; # define local x
 u:=List([1..3],i->Zero(F)); ## Need u[3] as a temporary variable
 v:=List([1..3],i->Zero(F));
 r:=List([1..3],i->Zero(F));
 q:=Zero(F);
 u[1]:=One(F); u[2]:=Zero(F); v[1]:=Zero(F); v[2]:=One(F);
 r[2]:=f; r[1]:=g;           ### applied with r2=f=g1, r1=g=g0
 while DegreeIndeterminate(r[2],x)> d-1 do    ### assume Degree(0) < 0.
  q   := EuclideanQuotient(R,r[1],r[2]);
  r[3]:=EuclideanRemainder(R,r[1],r[2]);
  u[3]:=u[1] - q*u[2];
  v[3]:=v[1] - q*v[2];
  r[1]:=r[2]; r[2] :=r[3];
  u[1]:=u[2]; u[2] :=u[3];
  v[1]:=v[2]; v[2] :=v[3];
 od;
 return([r[2],u[2],v[2]]);
end;

 a:=C!.points;
 R:=C!.ring;
 k:=C!.degree;
 F:=CoefficientsRing(R);
 b:=VectorCodeword(vec);
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1]; # define local x
 n:=Length(a);
 if Size(Set(a)) < n then
   Error("`Points in 1st vector must be distinct.`\n\n");
 fi;
 g0:=One(F)*Product([1..n],i->x-a[i]);
 g1:=InterpolatedPolynomial(F,a,b);
 geea:=GcdExtEuclideanUntilBound(F,g1,g0,(n+k)/2,R);
 u:=geea[2]; v:=geea[3]; g:=geea[1];
 if v=Zero(F) then return("fail"); fi;
 if v=One(F) then
     q:=g;
     r:=Zero(F);
   else
     q:=EuclideanQuotient(R,g,v);
     r:=EuclideanRemainder(R,g,v);
 fi;
 if ((r=Zero(F) or LeadingCoefficient(r)=Zero(F)) and (Degree(q) < k)) then
     f:=q;
   else
     f:="fail";  ## this does not occur if num errors < (mindist - 1)/2
 fi;
 if f="fail" then return(f); else
    return Codeword(List(a,i->Value(f,i)),C);
 fi;
end);

##########################################################
#
# Input: Pts=[x1,..,xn], l = highest power,
#       L=[h_1,...,h_ell] is list of powers
#       r=[r1,...,rn] is received vector
# Output: Computes matrix described in Algor. 12.1.1 in [JH]
#
GRSLocatorMat:=function(r,Pts,L)
  local a,j,b,ell,DiagonalPower,add_col_mat,add_row_mat,block_matrix;

 add_col_mat:=function(M,N) ## "AddColumnsToMatrix"
  #N is a matrix with same rowdim as M
  #the fcn adjoins N to the end of M
  local i,j,S,col,NT;
  col:=MutableTransposedMat(M);  #preserves M
  NT:=MutableTransposedMat(N);   #preserves N
  for j in [1..DimensionsMat(N)[2]] do
      Add(col,NT[j]);
  od;
  return MutableTransposedMat(col);
 end;

 add_row_mat:=function(M,N) ## "AddRowsToMatrix"
  #N is a matrix with same coldim as M
  #the fcn adjoins N to the bottom of M
  local i,j,S,row;
  row:=ShallowCopy(M);#to preserve M;
  for j in [1..DimensionsMat(N)[1]] do
    Add(row,N[j]);
  od;
  return row;
 end;

 block_matrix:=function(L) ## slightly simpler syntax IMHO than "BlockMatrix"
  # L is an array of matrices of the form
  # [[M1,...,Ma],[N1,...,Na],...,[P1,...,Pa]]
  # returns the associated block matrix
  local A,B,i,j,m,n;
  n:=Length(L[1]);
  m:=Length(L);
  A:=[];
  if n=1 then
     if m=1 then return L[1][1]; fi;
     A:=L[1][1];
     for i in [2..m] do
         A:=add_row_mat(A,L[i][1]);
     od;
     return A;
  fi;
  for j in [1..m] do
    A[j]:=L[j][1];
  od;
  for j in [1..m] do
   for i in [2..n] do
    A[j]:=add_col_mat(A[j],L[j][i]);
   od;
  od;
  B:=A[1];
  for j in [2..m] do
   B:= add_row_mat(B,A[j]);
  od;
  return B;
 end;

 DiagonalPower:=function(r,j)
  local R,n,i;
  n:=Length(r);
  R:=DiagonalMat(List([1..n],i->r[i]^j));
  return R;
 end;

  ell:=Length(L);
  a:=List([1..ell],j->DiagonalPower(r,(j-1))*VandermondeMat(Pts,L[j]));
  b:=List([1..ell],j->[1,j,a[j]]);
  return (block_matrix([a]));
end;

##############################################################
#
#
# Input: Pts=[x1,..,xn],
#       L=[h_1,...,h_ell] is list of powers
#       r=[r1,...,rn] is received vector
#
# Compute kernel of matrix in alg 12.1.1 in [JH].
# Choose a basis vector in kernel.
# Output: the lists of coefficients of the polynomial Q(x,y) in alg 12.1.1.
#
GRSErrorLocatorCoeffs:=function(r,Pts,L)
  local a,j,b,vec,e,QC,i,lengths,ker,ell;
  ell:=Length(L);
  e:=GRSLocatorMat(r,Pts,L);
  ker:=TriangulizedNullspaceMat(TransposedMat(e));
  if ker=[] then Print("Decoding fails.\n"); return []; fi;
  vec:=ker[Length(ker)];
  QC:=[];
  lengths:=List([1..ell],i->Sum(List([1..i],j->1+L[j])));
  QC[1]:=List([1..lengths[1]],j->vec[j]);
  for i in [2..ell] do
  QC[i]:=List([(lengths[i-1]+1)..lengths[i]],j->vec[j]);
  od;
  return QC;
end;


#######################################################
#
# Input: List L of coefficients ell, R = F[x]
#        Pts=[x1,..,xn],
# Output: list of polynomials Qi as in Algor. 12.1.1 in [JH]
#
GRSErrorLocatorPolynomials:=function(r,Pts,L,R)
  local q,p,i,ell;
  ell:=Length(L)+1; ##  ?? Length(L) instead ??
  q:=GRSErrorLocatorCoeffs(r,Pts,L);
  if q=[] then Print("Decoding fails.\n"); return []; fi;
  p:=[];
  for i in [1..Length(q)] do
     p:=Concatenation(p,[CoefficientToPolynomial(q[i],R)]);
  od;
  return p;
end;

##########################################################
#
# Input: List L of coefficients ell, R = F[x]
#       Pts=[x1,..,xn],
# Output: interpolating polynomial Q as in Algor. 12.1.1 in [JH]
#
GRSInterpolatingPolynomial:=function(r,Pts,L,R)
  local poly,i,Ry,F,y,Q,ell;
  ell:=Length(L)+1; ##  ?? Length(L) instead ??  ##### not used ???
Q:=GRSErrorLocatorPolynomials(r,Pts,L,R);
  if Q=[] then Print("Decoding fails.\n"); return 0; fi;
  F:=CoefficientsRing(R);
  y:=IndeterminatesOfPolynomialRing(R)[2];
# Ry:=PolynomialRing(F,[y]);
# poly:=CoefficientToPolynomial(Q,Ry);
  poly:=Sum(List([1..Length(Q)],i->Q[i]*y^(i-1)));
  return poly;
end;

#############################################################################
##
#F  GeneralizedReedSolomonDecoder( <C>, <v> )   . . decodes
##                                           generalized Reed-Solomon codes
##                                           using the interpolation algorithm
##
InstallMethod(GeneralizedReedSolomonDecoder,"method for code, codeword", true,
    [IsCode, IsCodeword], 0,
function(C,vec)
local v,R,k,P,z,F,f,s,t,L,n,Qpolys,vars,x,c,y;

 v:=VectorCodeword(vec);
 R:=C!.ring;
 P:=C!.points;
 k:=C!.degree;
 F:=CoefficientsRing(R);
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1];
#y:=vars[2];
 n:=Length(v);
 t:=Int((n-k)/2);
 L:=[n-1-t,n-t-k];
 Qpolys:=GRSErrorLocatorPolynomials(v,P,L,R);
 f:=-Qpolys[2]/Qpolys[1];
 c:=List(P,s->Value(f,[x],[s]));
 return Codeword(c,n,F);
end);


#############################################################################
##
#F  GeneralizedReedSolomonListDecoder( <C>, <v> , <ell> )   . . ell-list decodes
##                                           generalized Reed-Solomon codes
##                                           using M. Sudan's algorithm
##
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a GRS code
##        ell>0 is the length of the decoded list (should be at least
##                  2 to beat GeneralizedReedSolomonDecoder
##                  or Decoder with the special method of interpolation decoding)
##
InstallMethod(GeneralizedReedSolomonListDecoder,"method for code, codeword, integer",
    true, [IsCode, IsCodeword, IsInt], 0,
function(C,v,ell)
local f,h,g,x,R,R2,L,F,t,i,c,Pts,k,n,tau,Q,divisorsf,div,
      CodewordList,p,vars,y,degy, divisorsdeg1;
 R:=C!.ring;
 F:=CoefficientsRing(R);
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1];
 Pts:=C!.points;
 n:=Length(Pts);
 k:=C!.degree;
 tau:=Int((n-k)/2);
 L:=List([0..ell],i->n-tau-1-i*(k-1));
 y:=X(F,vars);;
 R2:=PolynomialRing(F,[x,y]);
 vars:=IndeterminatesOfPolynomialRing(R2);
 Q:=GRSInterpolatingPolynomial(v,Pts,L,R2);
 divisorsf:=DivisorsMultivariatePolynomial(Q,R2);
 divisorsdeg1:=[];
 CodewordList:=[];
 for div in divisorsf do
  degy:=DegreeIndeterminate(div,y);
  if degy=1 then ######### div=h*y+g
    g:=Value(div,vars,[x,Zero(F)]);
    h:=Derivative(div,y);
   if DegreeIndeterminate(h,x)=0 then
      f:= -h^(-1)*g*y^0;
      divisorsdeg1:=Concatenation(divisorsdeg1,[f]);
    if g=Zero(F)*x then
       c:=List(Pts,p->Zero(F));
     else
       c:=List(Pts,p->Value(f,[x,y],[p,Zero(F)]));
    fi;
    CodewordList:=Concatenation(CodewordList,[Codeword(c,C)]);
   fi;
  fi;
 od;
 return CodewordList;
end);

#############################################################################
##
#F  NearestNeighborGRSDecodewords( <C>, <v> , <dist> )   . . . finds all
##                                           generalized Reed-Solomon codewords
##                                           within distance <dist> from v
##                                           *and* the associated polynomial,
##                                           using "brute force"
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a GRS code
##        dist>0 is the distance from v to search
## Output: a list of pairs [c,f(x)], where wt(c-v)<dist
##         and c = (f(x1),...,f(xn))
##
## ****** very slow*****
##
InstallMethod(NearestNeighborGRSDecodewords,"method for code, codeword, integer",
    true, [IsCode, IsCodeword, IsInt], 0,
function(C,r,dist)
# "brute force" decoder
local k,F,Pts,v,p,x,f,NearbyWords,c,a;
 k:=C!.degree;
 Pts:=C!.points;
 F:=LeftActingDomain(C);
 NearbyWords:=[];
 for v in F^k do
   a := Codeword(v);
   f:=PolyCodeword(a);
   x:=IndeterminateOfLaurentPolynomial(f);
   c:=Codeword(List(Pts,p->Value(f,[x],[p])));
   if WeightCodeword(r-c) <= dist then
   NearbyWords:=Concatenation(NearbyWords,[[c,f]]);
 fi;
od;
return NearbyWords;
end);

#############################################################################
##
#F  NearestNeighborDecodewords( <C>, <v> , <dist> )   . . . finds all
##                                           codewords in a linear code C
##                                           within distance <dist> from v
##                                           using "brute force"
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a linear code
##        dist>0 is the distance from v to search
## Output: a list of c in C, where wt(c-v)<dist
##
## ****** very slow*****
##
InstallMethod(NearestNeighborDecodewords,"method for code, codeword, integer",
    true, [IsCode, IsCodeword, IsInt], 0,
function(C,r,dist)
# "brute force" decoder
local k,F,Pts,v,p,x,f,NearbyWords,c,a;
 F:=LeftActingDomain(C);
 NearbyWords:=[];
 for v in C do
   c := Codeword(v);
   if WeightCodeword(r-c) <= dist then
   NearbyWords:=Concatenation(NearbyWords,[c]);
 fi;
od;
return NearbyWords;
end);


#############################################################################
##
#F  BitFlipDecoder( <C>, <v>  )   . . . decodes *binary* LDPC codes using bit-flipping
##                                                           or Gallager hard-decision
##               ** often fails to work if C is not LDPC **
##
## Input: v is a received vector (a GUAVA codeword)
##        C is a binary LDPC code
## Output: a c in C, where wt(c-v)<mindis(C)
##
## ****** fast *****
##
checksetJ:=function(H,w)
 local i,I,n,k;
 I:=[];
 n:=Length(H[1]);
 for i in [1..n] do
    if H[w][i]<>0*Z(2) then
        I:=Concatenation(I,[i]);
    fi;
 od;
 return I;
end;

checksetI:=function(H,u)
 return checksetJ(TransposedMat(H),u);
end;

BFcounter:=function(I,s)
 local S,i;
 S:=Codeword(List(I, i -> List(s)[i]));
 return WeightCodeword(S);
end;

bit_flip:=function(H,v)
 local i,j,s,q,n,k,rho,gamma,I_j,tH;
 tH:=TransposedMat(H);
 q:=ShallowCopy(v);
 s:=H*q;
 n:=Length(H[1]);
 k:=n-Length(H);
 rho:=Length(Support(Codeword(H[1])));
 #gamma:= Length(Support(Codeword(TransposedMat(H)[1])));
 for j in [1..n] do
   gamma:= Length(Support(Codeword(tH[j])));
   I_j:=checksetI(H,j);
       if BFcounter(I_j,s)>gamma/2 then
           q[j]:=q[j]+Z(2);
           break;
       fi;
 od;
 return Codeword(q);
end;

InstallMethod(BitFlipDecoder,"method for code, codeword, integer",
    true, [IsCode, IsCodeword], 0,
function(C,v)
 local H,r,qnew,q;
 H:=CheckMat(C);
 r:=ShallowCopy(v);
 if Length(Support(Codeword(H*v)))=0 then
        return v;
 fi;
 q:=bit_flip(H,r);
 if Length(Support(Codeword(H*q)))=0 then
        return Codeword(q);
 fi;
 while Length(Support(Codeword(H*q)))<Length(Support(Codeword(H*r))) do
 #while q<>r do
   qnew:=q;
   r:=q;
   q:=bit_flip(H,qnew);
   Print("  ",Length(Support(Codeword(H*q))),"  ",Length(Support(Codeword(H*r))),"\n");
 od;
 return Codeword(r);
end);

