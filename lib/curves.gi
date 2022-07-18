#############################################################################
##
#A  curves.gi                 GUAVA library                      David Joyner
##
##  this file contains implementations for some AG codes and Riemann-Roch
##  spaces for the projective line P^1
##
##  created 5-9-2005: also, moved
##       DivisorsMultivariatePolynomial (and subfunctions),
##       from util2.gi (where it was in guava 2.0)
##  added 5-15-2005: MatrixRepresentationOnRiemannRochSpaceP1
##            and related functions for P1
##  bug fix 6-13-2005: MatrixRepresentationOnRiemannRochSpaceP1
##            code was cleaned up and fixed.
##  added SolveLinearSystem (with bug fix due to
##             Punarbasu Purkayastha <ppurka@umd.edu>)
##

############ some miscellaneous functions ###############


########################################################################
##
#F  CoefficientToPolynomial( <coeffs> , <R> )
##
##  Input: a list of coeffs = [c0,c1,..,cd]
##         a univariate polynomial ring R = F[x]
##  Output: a polynomial c0+c1*x+...+cd*x^(d-1) in R
##

InstallMethod(CoefficientToPolynomial, true, [IsList, IsRing], 0,
function(coeffs,R)
  local p,i,j, lengths, F,xx;
  xx:=IndeterminatesOfPolynomialRing(R)[1];
  F:=Field(coeffs);
  p:=Zero(F);
# lengths:=List([1..Length(coeffs)],i->Sum(List([1..i],j->1+coeffs[j])));
  for i in [1..Length(coeffs)] do
   p:=p+coeffs[i]*xx^(i-1);
  od;
  return p;
end);

CoefficientOfPolynomial00:=function(f,var)
# **just** computes the coeff of var in f
local F,coeffs;
 F:=DefaultField(f);
 coeffs:=[];
 coeffs:=PolynomialCoefficientsOfPolynomial(f,var);
 if Length(coeffs)=1 then
   return Zero(F);
 fi;
 return coeffs[2];
end;
################### example:
#R:= PolynomialRing( Rationals, 3 );;
#vars:= IndeterminatesOfPolynomialRing(R);;
#x:= vars[1];; y:= vars[2];; z:= vars[3];;
#g:=x^2+x^3;
#PolynomialCoefficientsOfPolynomial(g,x);
#CoefficientOfPolynomial00(g,x);


SolveLinearSystem:=function(L,vars)
# L is a list of linear forms in the variables vars
# return the soln of the system, if its unique
# 1. first find the associated matrix A
# 2. find the "constant vector" b
# 3. solve A*v=b
##  **** no error checking is done ****
local zerosF,F,v,A,b,f,coeffs;
  F:=DefaultField(L[1]);
  zerosF:=List(vars,v->Zero(F));
  A:=List(L,f->List(vars,v->CoefficientOfPolynomial00(f,v)));
  b:=(-1)*List(L,f->Value(f,vars,zerosF));
  return SolutionMat( TransposedMat(A), b );
end;
######### example:
#
#R:= PolynomialRing( Rationals, ["x","y"] );;
#i:= IndeterminatesOfPolynomialRing(R);;
#x:= i[1];; y:= i[2];;
#f:=2*y-3*x+1; g:=-5*y+2*x-7;
#soln:=SolveLinearSystem([f,g],[x,y]);
#Value(f,[x,y],soln);
#Value(g,[x,y],soln);
#
#f:=-2*y-3*x+1; g:=-5*y+3*x-7;
#soln:=SolveLinearSystem([f,g],[x,y]);
#


###########################################################
##
#F      DegreesMonomialTerm( <m>, <R> )
##
## Input: a monomial <m> in n variables,
##          (not all of which need occur)
##        a multivariate polynomial ring R containing <m>
## Output: the list of degrees of each variable in <m>.
##
InstallMethod(DegreesMonomialTerm, true, [IsRingElement, IsRing], 0,
function(m,R)
## output is a different format if m is not a monomial
local degrees, e, n0, i, j, l, n1, n,vars,x;
 vars:=IndeterminatesOfPolynomialRing(R);
 e:=ExtRepPolynomialRatFun(m);
 n0:=Length(e);
 n:=Int(n0/2);
 degrees:=[];
 if n>1 then
  for i in [1..n] do
   l:=e[2*i-1];
   n1:=Length(l);
   for j  in [1..Int(n1/2)] do
     degrees:=Concatenation(degrees,[l[2*j]]);
   od;
  od;
 fi;
 if n=1 then
  for x in vars do
    degrees:=Concatenation(degrees,[DegreeIndeterminate(m,x)]);
  od;
 fi;
 return degrees;
end);

###########################################################
##
#F      DegreesMultivariatePolynomial( <f>, <R> )
##
## Input: multivariate poly <f> in R=F[x1,x2,...,xn]
##        a multivariate polynomial ring <R> containing <f>
## Output: the list of degrees of each term in <f>.
##
InstallMethod(DegreesMultivariatePolynomial, true, [IsRingElement, IsRing], 0,
function(f,R)
local partsf,monsf,vars,deg,i,j;
 vars:=IndeterminatesOfPolynomialRing(R);
 partsf:=ConstituentsPolynomial(f);
# varsf:=partsf.variables;
 monsf:=partsf.monomials;
 deg:=List([1..Length(monsf)],i->
  List([1..Length(vars)],j->
   [monsf[i],vars[j],DegreeIndeterminate(monsf[i],vars[j])]));
 return deg;
end);

###########################################################
##
#F      DegreeMultivariatePolynomial( <f>, <R> )
##
## Input: multivariate poly <f> in R=F[x1,x2,...,xn]
##        a multivariate polynomial ring <R> containing <f>
## Output: the degree of <f>.
##
InstallMethod(DegreeMultivariatePolynomial, true, [IsRingElement, IsRing], 0,
function(f,R)
local partsf,monsf,vars,deg,i,j;
 vars:=IndeterminatesOfPolynomialRing(R);
 partsf:=ConstituentsPolynomial(f);
# varsf:=partsf.variables;
 monsf:=partsf.monomials;
 deg:=List([1..Length(monsf)],i->
  Sum(List([1..Length(vars)],j->
   DegreeIndeterminate(monsf[i],vars[j]))));
 return Maximum(deg);
end);

########################################################################
##
#F  DivisorsMultivariatePolynomial( <f> , <R> )
##
## Input: f is a polynomial in R=F[x1,...,xn]
## Output: all divisors of f
## uses a slow algorithm due to Kronecker (see Joachim von zur Gathen,
## Juergen Gerhard, *Modern Computer Algebra*, exercise 16.10)
##
InstallMethod(DivisorsMultivariatePolynomial, true,
[IsPolynomial, IsPolynomialRing], 0, function(f,R)
local p,var,vars,mons,degrees,g,d,r,div,ffactors,F,R1,fam,fex,cand,i,j,
      select,T,TN,ti,terms,L,N,k,varpow,nvars,cp,perm,cnt,vals,forig,ediv,
      KroneckerMap,InverseKroneckerMapUnivariate;

 KroneckerMap:=function(f,vars,var,p)
 # maps polys in x1,...,xn to polys in x
 # induced by xi -> x^(p^(i-1))
 local g;
  g:=Value(f,vars, List([1..Length(vars)],i->var[1]^(p^(i-1))));
  return g;
 end;

 InverseKroneckerMapUnivariate:=function(g,varpow)
 local coeffs,d,f,i;
  if not IsUnivariatePolynomial(g) then
    Error("this function assumes polynomial is univariate");
  fi;
  coeffs:=CoefficientsOfUnivariateLaurentPolynomial(g);
  coeffs:=ShiftedCoeffs(coeffs[1],coeffs[2]);
  d:=Length(coeffs)-1;
  f:=Zero(g);
  for i in [1..Length(coeffs)] do
    if not IsZero(coeffs[i]) then
      f:=f+coeffs[i]*varpow[i];
    fi;
  od;
  return f;
 end;

  cp:=ConstituentsPolynomial(f);
  mons:=cp.monomials;
  # count variable frequencies
  L:=ListWithIdenticalEntries(
    Maximum(List(cp.variables,
      IndeterminateNumberOfUnivariateRationalFunction)),0);
  for i in mons do
    T:=ExtRepPolynomialRatFun(i)[1];
    for j in [1,3..Length(T)-1] do
      L[T[j]]:=L[T[j]]+T[j+1];
    od;
  od;
  T:=[1..Length(L)];
  SortParallel(L,T);
  T:=Reversed(T);
  L:=Reversed(L);
  if ForAny([1..Length(L)],i->L[i]>0 and L[T[i]]<>L[i]) then
    perm:=PermList(T)^-1;
    Info(InfoPoly,2,"Variable swap: ",perm);
    f:=OnIndeterminates(f,perm);
    cp:=ConstituentsPolynomial(f);
    mons:=cp.monomials;
  else
    perm:=(); # irrelevant swap
  fi;

  vars:=cp.variables;
  nvars:=Length(vars);
  F:=CoefficientsRing(R);
  R1:=PolynomialRing(F,1);
  var:=IndeterminatesOfPolynomialRing(R1);
  degrees:=List([1..Length(mons)],i->DegreesMonomialTerm(mons[i],R));
  d:=Maximum(Flat(degrees));
  p:=NextPrimeInt(d);
  p:=Maximum(d+1,2);

  forig:=f;

  # coefficient shift to remove duplicate roots
  cnt:=0;
  vals:=List(vars,i->Zero(F));
  repeat
    if cnt>0 then
      vals:=List(vars,i->Random(F));
      f:=Value(forig,vars,List([1..nvars],i->vars[i]-vals[i]));
    fi;
    g:=KroneckerMap(f,vars,var,p);
    cnt:=cnt+1;
    L:=DegreeOfUnivariateLaurentPolynomial(Gcd(g,Derivative(g)));
    Info(InfoPoly,3,"Trying shift: ",vals,": ",L);
  until cnt>DegreeOfUnivariateLaurentPolynomial(g) or L=0;

  # prepare padic representations of powers
  L:=ListWithIdenticalEntries(nvars,0);
  varpow:=List([0..DegreeOfUnivariateLaurentPolynomial(g)],
                i->Concatenation(CoefficientsQadic(i,p),L){[1..nvars]});
  varpow:=List(varpow,i->Product(List([1..nvars],j->vars[j]^i[j])));

  fam:=FamilyObj(f);
  fex:=ExtRepPolynomialRatFun(f);
  L:=Factors(R1,g);
  N:=Length(L);
  cand:=[1..N];
  for k in [1..QuoInt(N,2)] do
    T:=Combinations(cand,k);
    Info(InfoPoly,2,"Length ",k,": ",Length(T)," candidates");
    ti:=1;
    while ti<=Length(T) do;
      terms:=T[ti];
      div:=Product(L{terms});
      div:=InverseKroneckerMapUnivariate(div,varpow);
      ediv:=ExtRepPolynomialRatFun(div);
      #if not IsOne(ediv[Length(ediv)]) then
      #  div:=div/ediv[Length(ediv)];
      #  ediv:=ExtRepPolynomialRatFun(div);
      #fi;
      # call the library routine used to test quotient of polynomials
      r:=QuotientPolynomialsExtRep(fam,fex,ediv);
      if r<>fail then
        fex:=r;
        f:=PolynomialByExtRepNC(fam,fex);
        Info(InfoPoly,1,"found factor ",terms," ",div," remainder ",f);
        ffactors:=DivisorsMultivariatePolynomial(f,R);
        Add(ffactors,div);
        if ForAny(vals,i->not IsZero(i)) then
          ffactors:=List(ffactors,
                         i->Value(i,vars,List([1..nvars],j->vars[j]+vals[j])));
        fi;

        if not IsOne(perm) then
          ffactors:=List(ffactors,i->OnIndeterminates(i,perm^-1));
        fi;
        return ffactors;
      fi;
      ti:=ti+1;
    od;
  od;

  if ForAny(vals,i->not IsZero(i)) then
    f:=Value(f,vars,List([1..nvars],j->vars[j]+vals[j]));
  fi;

  if not IsOne(perm) then
    f:=OnIndeterminates(f,perm^-1);
  fi;
  return [f];
end);


###########################################################
#
#         general curve stuff
#
###########################################################

###########################################################
##
#F      AffineCurve(<poly>, <ring> )
##
## Input: <poly> is a polynomial in the ring F[x,y],
##        <ring> is a bivariate ring containing <f>
## Output: associated record: polynomial component and a ring component
##
InstallMethod(AffineCurve, true, [IsRingElement, IsRing], 0,
function(poly,ring)
## this does some type checking...
local crv;
 crv:=rec();
 if IsPolynomialRing(ring) then crv.ring:=ring; fi;
 if not(IsPolynomialRing(ring)) then
   Error("\n 4th argument must be a polynomial ring (eg, F[x,y])\n");
 fi;
 if poly in ring then crv.polynomial:=poly; fi;
 if not(poly in ring) then
   Error("\n 3rd argument must be a function in the polynomial ring (eg, y in F[x,y] for P^1)\n");
 fi;
 return crv;
end);


###########################################################
##
#F      GenusCurve( <crv> )
##
##
## Input: <crv> is a curve record structure
##        crv: f(x,y)=0, f a poly of degree d
## Output: genus of plane curve
##         genus = (d-1)(d-2)/2
##
InstallMethod(GenusCurve, true, [IsRecord], 0,
function(crv)
local d, f, R;
 R:=crv.ring;
 f:=crv.polynomial;
 d:=DegreeMultivariatePolynomial(f,R);
 return (d-1)*(d-2)/2;
end);

###########################################################
##
#F      OnCurve( <Pts>, <crv> )
##
## Input: <crv> is a curve record structure
##        <Pts> a list of pts in F^2
##        crv: f(x,y)=0, f a poly in F[x,y]
## Output: true if they are all on crv
##         false otherwise
##
InstallMethod(OnCurve, true, [IsList,IsRecord], 0,
function(Pts,crv)
local p,f,R,F,vars,val,values;
 f:=crv.polynomial;
 R:=crv.ring;
 F:=CoefficientsRing(R);
 vars:=IndeterminatesOfPolynomialRing(R);
 values:=List(Pts,p->Value(f,vars,p));
 if f in vars then   ###   P^1 case
   for p in Pts do
     if not(p in F) then return false; fi;
   od;
   return true;
 fi;
 for p in Pts do
   for val in values do
    if val<>Zero(F) then return false; fi;
   od;
 od;
 return true;
end);

#############################################################################
##
#F  AffinePointsOnCurve(<f>, <R>, <E>)
## ***** only works for finiet fields*****
##
InstallGlobalFunction(AffinePointsOnCurve,function(f,R,E)
 local a,b,indets,solns;
 if not(IsFinite(E)) then
    Error("Field ",E," must be finite.");
 fi;
 solns:=[];
 indets:=IndeterminatesOfPolynomialRing(R);
 for a in E do
  for b in E do
    if Value(f,indets,[a,b])=Zero(E) then
     solns:=Concatenation([[a,b]],solns);
    fi;
  od;
 od;
 return solns;
end);

###########################################################
#
#         general divisor stuff
#
###########################################################

###########################################################
##
#F      DivisorOnAffineCurve(<cdiv>, <sdiv>, <crv> )
##          creates divisor on curve record structure
##
## Input: <cdiv> list of integers (coeffs of divisor),
##        <sdiv> is a list of points (support of divisor),
##        <crv> is a curve record
## Output: associated divisor record
##
InstallMethod(DivisorOnAffineCurve, true, [IsList,IsList,IsRecord], 0,
function(cdiv,sdiv,crv)
local div,F,vars,R;
 R:=crv.ring;
 F:=CoefficientsRing(R);
 vars:=IndeterminatesOfPolynomialRing(R);
 div:=rec();
 if (IsList(cdiv) and cdiv[1] in Integers) then div.coeffs:=cdiv; fi;
 if (not(IsList(cdiv)) or not(cdiv[1] in Integers)) then
    Error("\n 1st argument is not a list of integers\n");
 fi;
 if ((crv.polynomial in vars) and IsList(sdiv) and sdiv[1] in F) then ### this is for P^1
   div.support:=sdiv;
 fi;
 if (not(crv.polynomial in vars) and IsList(sdiv)) then ### not P^1
   div.support:=sdiv;
 fi;
# if (not(IsList(sdiv)) or not(OnCurve(sdiv,crv))) then
#    Error("\n 2nd argument is not a list of points\n");
# fi;
 if Length(sdiv)<>Length(cdiv) then
    Error("\n 1st and 2nd arguments must have same length\n");
 fi;
 div.curve:=crv;
 return div;
end);

###########################################################
##
#F      DivisorOnAffineCurve(<div1>, <div2> )
##
## Input: <div1> , <div2> are divisor records
## Output: sum
##
InstallMethod(DivisorAddition, true, [IsRecord,IsRecord], 0,
function(D1,D2)
local c1,c2,supp1,supp2,pos1,pos2,sumc,sums,pt;
 if not(D1.curve.ring=D2.curve.ring) then
      Error("\n 1st and 2nd divisor must have the same curve\n");
 fi;
 if not(D1.curve.polynomial=D2.curve.polynomial) then
      Error("\n 1st and 2nd divisor must have the same curve\n");
 fi;
 c1:=D1.coeffs;
 c2:=D2.coeffs;
 supp1:=D1.support;
 supp2:=D2.support;
 sumc:=[];
 sums:=[];
 for pt in Union(supp1,supp2) do
  if (pt in supp1) and (pt in supp2) then
    pos1:=PositionSublist(supp1,[pt]);
    pos2:=PositionSublist(supp2,[pt]);
    sumc:=Concatenation(sumc,[c1[pos1]+c2[pos2]]);
    sums:=Concatenation(sums,[pt]);
  fi;
  if (pt in supp1) and not(pt in supp2) then
    pos1:=PositionSublist(supp1,[pt]);
    sumc:=Concatenation(sumc,[c1[pos1]]);
    sums:=Concatenation(sums,[pt]);
  fi;
  if (pt in supp2) and not(pt in supp1) then
    pos2:=PositionSublist(supp2,[pt]);
    sumc:=Concatenation(sumc,[c2[pos2]]);
    sums:=Concatenation(sums,[pt]);
  fi;
 od;
 return rec(coeffs:=sumc,support:=sums,curve:=D1.curve);
end);


###########################################################
##
#F      DivisorDegree( <div> )
##
## Input: <div> a divisor record
## Output: degree = sum of coeffs
##
InstallMethod(DivisorDegree, true, [IsRecord], 0,
function(div)
local c;
 c:=div.coeffs;
 return Sum(c);
end);

###########################################################
##
#F      DivisorIsEffective( <div> )
##
## Input: <div> a divisor record
## Output: true if all coeffs>=0, false otherwise
##
InstallMethod(DivisorIsEffective, true, [IsRecord], 0,
function(div)
local c,a;
 c:=div.coeffs;
 for a in c do
   if a<0 then return false; fi;
 od;
 return true;
end);

###########################################################
##
#F      DivisorNegate( <div> )
##
## Input: <div> a divisor record
## Output: -div
##
InstallMethod(DivisorNegate, true, [IsRecord], 0,
function(div)
local c,s;
 c:=div.coeffs;
 s:=div.support;
 return rec(coeffs:=(-1)*c,support:=s,curve:=div.curve);
end);

###########################################################
##
#F      DivisorIsZero( <div> )
##
## Input: <div> a divisor record
## Output: true if all coeffs=0, false otherwise
##
InstallMethod(DivisorIsZero, true, [IsRecord], 0,
function(div)
local c,a;
 c:=div.coeffs;
 for a in c do
   if a<>0 then return false; fi;
 od;
 return true;
end);

###########################################################
##
#F      DivisorEqual(<div1>, <div2> )
##
## Input: <div1> , <div2> are divisor records
## Output: true if div1=div2
##
InstallMethod(DivisorEqual, true, [IsRecord,IsRecord], 0,
function(div1,div2)
local div;
 div:=DivisorAddition(div1,DivisorNegate(div2));
 return DivisorIsZero(div);
end);

###########################################################
##
#F      DivisorGCD(<D1>, <D2> )
##
## If D_1=e_1P_1+...+e_kP_k and D_2=f_1P_1+...+f_kP_k
## are two divisors on a curve then their
## GCD is  min(e_1,f_1)P_1+...+min(e_k,f_k)P_k
##
## Input: <D1> , <D2> are divisor records
## Output: GCD
##
InstallMethod(DivisorGCD, true, [IsRecord,IsRecord], 0,
function(D1,D2)
local c1,c2,supp1,supp2,pos1,pos2,gcdcoeffs,gcdsupp,pt;
 if not(D1.curve.ring=D2.curve.ring) then
      Error("\n 1st and 2nd divisor must have the same curve\n");
 fi;
 if not(D1.curve.polynomial=D2.curve.polynomial) then
      Error("\n 1st and 2nd divisor must have the same curve\n");
 fi;
 c1:=D1.coeffs;
 c2:=D2.coeffs;
 supp1:=D1.support;
 supp2:=D2.support;
 gcdcoeffs:=[];
 gcdsupp:=[];
 for pt in Union(supp1,supp2) do
  if (pt in supp1) and (pt in supp2) then
    pos1:=PositionSublist(supp1,[pt]);
    pos2:=PositionSublist(supp2,[pt]);
    gcdcoeffs:=Concatenation(gcdcoeffs,[Minimum(c1[pos1],c2[pos2])]);
    gcdsupp:=Concatenation(gcdsupp,[pt]);
  fi;
  if (pt in supp1) and not(pt in supp2) then
    pos1:=PositionSublist(supp1,[pt]);
    gcdcoeffs:=Concatenation(gcdcoeffs,[Minimum(c1[pos1],0)]);
    gcdsupp:=Concatenation(gcdsupp,[pt]);
  fi;
  if (pt in supp2) and not(pt in supp1) then
    pos2:=PositionSublist(supp2,[pt]);
    gcdcoeffs:=Concatenation(gcdcoeffs,[Minimum(0,c2[pos2])]);
    gcdsupp:=Concatenation(gcdsupp,[pt]);
  fi;
 od;
 return rec(coeffs:=gcdcoeffs,support:=gcdsupp,curve:=D1.curve);
end);

###########################################################
##
#F      DivisorLCM(<D1>, <D2> )
##
## If D_1=e_1P_1+...+e_kP_k and D_2=f_1P_1+...+f_kP_k
## are two divisors on a curve then their
## LCM is  max(e_1,f_1)P_1+...+max(e_k,f_k)P_k
##
## Input: <D1> , <D2> are divisor records
## Output: LCM
##
InstallMethod(DivisorLCM, true, [IsRecord,IsRecord], 0,
function(D1,D2)
local div_sum, ndiv_gcd;
 div_sum:=DivisorAddition(D1,D2);
 ndiv_gcd:=DivisorNegate(DivisorGCD(D1,D2));
 return DivisorAddition(div_sum, ndiv_gcd);
end);

###########################################################
#
#            P^1 only stuff
#
#  ..... bases of L(D) on P^1 ...
#  if D is effective then the basis is easy...
#
###########################################################

###########################################################
##
#F      RiemannRochSpaceBasisFunctionP1(<P>, <k>, <R> )
##
## Input: <P> is a point in F, F=finite field,
##        <k> is an integer,
##        <R> is a polynomial ring in x,y
## Output: associated basis function of P^1, 1/(x-P)^k
##
InstallMethod(RiemannRochSpaceBasisFunctionP1, true, [IsExtAElement, IsInt,IsRing], 0,
function(P,k,R2)
local x,vars;
  vars:=IndeterminatesOfPolynomialRing(R2);
  x:=vars[1];
  return x^0/(x-P)^k;
end);

###########################################################
##
#F      RiemannRochSpaceBasisEffectiveP1(<div> )
##
## Input: <div> is an effective divisor on P^1
## Output: associated basis functions of L(div) on P^1
##
InstallMethod(RiemannRochSpaceBasisEffectiveP1, true, [IsRecord], 0,
function(div)
local F,n,basis,pt,cdiv,sdiv,i,j,k,pos,R;
  R:=div.curve.ring;
  F:=CoefficientsRing(R);
  if not(DivisorIsEffective(div)) then
    Error("\n divisor must be effective \n");
  fi;
  basis:=[]; #RiemannRochSpaceBasisFunctionP1(Zero(F),0,R)
  cdiv:=div.coeffs;
  sdiv:=div.support;
  n:=Length(cdiv);
  for k in [1..n] do
   for i in [1..cdiv[k]] do
    basis:=Concatenation(basis,
            [RiemannRochSpaceBasisFunctionP1(sdiv[k],i,R)]);
   od;
  od;
  return Concatenation(basis,[basis[1]^0]);
end);

###########################################################
##
#F      RiemannRochSpaceBasisP1(<div> )
##
## Input: <div> is a divisor on P^1
## Output: associated basis functions of L(div) on P^1
##
InstallMethod(RiemannRochSpaceBasisP1, true, [IsRecord], 0,
function(div)
local R,vars,x,div0,deg,f,F,basis,pt,cdiv,sdiv,i,j,k,pos;
  R:=div.curve.ring;
  F:=CoefficientsRing(R);
  if DivisorIsZero(div) then
    return [One(F)];
  fi;
  deg:=DivisorDegree(div);
  if deg<0 then
    return [Zero(F)];
  fi;
  if DivisorIsEffective(div) then
    return RiemannRochSpaceBasisEffectiveP1(div);
  fi;
  vars:=IndeterminatesOfPolynomialRing(R);
  x:=vars[1];
  div0:=Immutable(div); ### unnecessary...
  cdiv:=div.coeffs;
  sdiv:=div.support;
  k:=Length(cdiv);
  cdiv[k]:=cdiv[k]-deg;   ## pick the last point in div to subtract away
  f:=One(F);
  for i in [1..Length(cdiv)] do
    f:=f*(x-sdiv[i])^(-cdiv[i]);
  od;
  basis:=Concatenation([One(F)*x^0],List([0..deg],i->f*(x-sdiv[k])^(-i)));
  cdiv[k]:=cdiv[k]+deg; ## restores divisor to original
 return basis;
end);

###########################################################
##
#F      DivisorOfRationalFunctionP1(<f>, <R> )
##
## Input: <f> is a rational function of x
##        <R> is a polynomial ring in x,y
## Output: associated divisor of <f>
##
InstallMethod(DivisorOfRationalFunctionP1, true, [IsRationalFunction,IsRing], 0,
function(f,R)
local crv,vars,y,n1,n2,suppdiv,coeffdiv,i,divf,rootsd,rootsn,den,num;
  vars:=IndeterminatesOfPolynomialRing(R); y:=vars[1];
  num:=NumeratorOfRationalFunction(f);
  rootsn:=RootsOfUPol(num);
  den:=DenominatorOfRationalFunction(f);
  rootsd:=RootsOfUPol(den);
  n1:=Length(Set(rootsn)); n2:=Length(Set(rootsd));
  coeffdiv:=Concatenation(List([1..n1],
    i->MultiplicityInList(rootsn, Set(rootsn)[i])),
       List([1..n2],i->-MultiplicityInList(rootsd, Set(rootsd)[i])));
  suppdiv:=Concatenation(Set(rootsn),Set(rootsd));
  crv:=AffineCurve(y,R);
  divf:=rec(coeffs:=coeffdiv,support:=suppdiv,curve:=crv);
  return divf;
end);

##################################################
#
#  Group action on RR space and associate AG code
#   for the curve P^1
#
###################################################

###########################################################
##
#F      MoebiusTransformation(A,R)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <R> is a polynomial ring in x, R=F[x]
## Output: associated Moebius transformation to A
##
InstallMethod(MoebiusTransformation, true, [IsMatrix,IsRing], 0,
function(A,R)
local var,f,x,a,b,c,d,F;
 var:=IndeterminatesOfPolynomialRing(R);
 F:=CoefficientsRing(R);
 x:=var[1];
 a:=A[1][1];
 b:=A[1][2];
 c:=A[2][1];
 d:=A[2][2];
 if c=Zero(F) and d=Zero(F) then return "infinity"; fi;
 f:=(a*x+b)/(c*x+d);
 return f;
end);

###########################################################
##
#F      ActionMoebiusTransformationOnFunction(A,f,R2)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <f> is a rational function in F(x)
##        <R2> is a polynomial ring in x,y, R2=F[x,y]
## Output: associated function Af
##
InstallMethod(ActionMoebiusTransformationOnFunction, true, [IsMatrix,IsRationalFunction,IsRing], 0,
function(A,f,R2)
local m,numf,var,p,denf,F,R1;
if A=() then return f; fi;
 F:=CoefficientsRing(R2);
 var:=IndeterminatesOfPolynomialRing(R2);
 R1:= PolynomialRing(F,[var[1]]);
 var:=IndeterminatesOfPolynomialRing(R1);
 m:=MoebiusTransformation(A,R1);
 denf:=DenominatorOfRationalFunction(f);
 numf:=NumeratorOfRationalFunction(f);
# return Value(numf,var,[m])/Value(denf,var,[m]);
 return Value(f,var,[m]);
end);

###########################################################
##
#F      ActionMoebiusTransformationOnDivisorP1(A,div)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <div> is a divisor on P^1
## Output: associated divisor Adiv
##
InstallMethod(ActionMoebiusTransformationOnDivisorP1, true, [IsMatrix,IsRecord], 0,
function(A,div)
local f,sdiv,Adiv,var,p,denf,F,R,xx,R1;
if A=() then return div; fi;
 R:=div.curve.ring;
 F:=CoefficientsRing(R);
 var:=IndeterminatesOfPolynomialRing(R);
 xx:=X(F,var);
 R1:= PolynomialRing(F,[xx]);
 var:=IndeterminatesOfPolynomialRing(R1);
 Adiv:=ShallowCopy(div);
 sdiv:=div.support;
 f:=MoebiusTransformation(A,R1);
 denf:=DenominatorOfRationalFunction(f);
 for p in sdiv do
  if Value(denf,var,[p])=Zero(F) then
   Print("\n f.l.t. = ",f,",   point = ",p,"\n\n");
   Error("\n Sorry, action on this divisor is undefined\n\n");
  fi;
 od;
 Adiv.support:=List(sdiv,p->Value(f,var,[p]));
 return Adiv;
end);

###########################################################
##
#F      ActionMoebiusTransformationOnDivisorDefinedP1(A,div)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <div> is a divisor on P^1
## Output: returns true if associated divisor Adiv is
##         not supported at infinity
##
InstallMethod(ActionMoebiusTransformationOnDivisorDefinedP1, true, [IsMatrix,IsRecord], 0,
function(A,div)
local f,sdiv,Adiv,var,p,denf,F,R,R1,xx;
if A=() then return div; fi;
 R:=div.curve.ring;
 F:=CoefficientsRing(R);
 var:=IndeterminatesOfPolynomialRing(R);
 xx:=X(F,var); #### this be called more than once:-)
 R1:= PolynomialRing(F,[xx]);
 var:=IndeterminatesOfPolynomialRing(R1);
 Adiv:=ShallowCopy(div);
 sdiv:=div.support;
 f:=MoebiusTransformation(A,R1);
 denf:=DenominatorOfRationalFunction(f);
 for p in sdiv do
  if Value(denf,var,[p])=Zero(F) then
   return false;
  fi;
 od;
 return true;
end);

###########################################################
##
#F      DivisorAutomorphismGroupP1(div)
##
## Input: <div> is a divisor on P^1 over a finite field
## Output: returns subgroup of GL(2,F) which preserves div
##
## *** very slow ***
##
InstallMethod(DivisorAutomorphismGroupP1, true, [IsRecord], 0,
function(div)
local R,F,A,autgp,sdiv,G,Adiv,eG;
 sdiv:=div.support;
 autgp:=[];
 R:=div.curve.ring;
 F:=CoefficientsRing(R);
 G:=GL(2,F);
 eG:=Elements(G);
 for A in eG do
#  f:=MoebiusTransformation(A,R);
   if ActionMoebiusTransformationOnDivisorDefinedP1(A,div) then
      Adiv:= ActionMoebiusTransformationOnDivisorP1(A,div);
      if DivisorEqual(div,Adiv) then
        autgp:=Concatenation(autgp,[A]);
#        eG:=Difference(eG,Elements(Group(autgp)));
#  leaving the above in slows it down!
      fi;
   fi;
 od;
 if autgp<>[] then return Group(autgp); fi;
 return Group(());
end);

###########################################################
##
#F      MatrixRepresentationOnRiemannRochSpaceP1(g,div)
##
## Input: g in G subgp Aut(D) subgp Aut(X)
##        D=div a divisor on a curve X
## Output: a dxd matrix, where d = dim L(D),
##         representing the action of g on L(D).
## Note: g sends L(D) to r*L(D), where
##       r is a polynomial of degree 1 depending on
##       g and D
##
## *** very slow ***
##
InstallMethod(MatrixRepresentationOnRiemannRochSpaceP1, true, [IsMatrix,IsRecord], 0,
function(g,div)
local i,j,n,R,F,f,B,gB,num,gBgood,basisLD,LD,coeffs_g,xx,R1,var;
 R:=div.curve.ring;
 var:=IndeterminatesOfPolynomialRing(R);
 F:=CoefficientsRing(R);
 B:=RiemannRochSpaceBasisP1(div);
 n:=Length(B);
 LD:=VectorSpace(F,B);
 basisLD:=Basis(LD,B);
 xx:=X(F,var);
 R1:= PolynomialRing(F,[xx]); ## used ????????
 gB:=List(B,f->ActionMoebiusTransformationOnFunction(g,f,R));
# this ring R for gB must be same ring as for B
 coeffs_g:=[];   # moved from inside "if not(Div..." statement below
 if not(DivisorIsEffective(div)) then            #div<0
  for i in [1..n] do
    coeffs_g[i]:=Coefficients( basisLD, gB[i] );
  od;
 fi;
 if DivisorIsEffective(div) then                 #div>0
  for i in [1..n] do
     coeffs_g[i]:=Coefficients( basisLD, xx^0*gB[i] );
     # Coefficients can't handle a constant function so pre-multiply by x^0
  od;
 fi;
 return coeffs_g;
end);

###########################################################
##
#F      GOrbitPoint:(G,P)
##
## P must be a point in P^n(F)
## G must be a finite subgroup of GL(n+1,F)
##   returns all (representatives of projective)
##   points in the orbit G*P
##
InstallMethod(GOrbitPoint, true, [IsGroup,IsList], 0,
function(G,P)
local O,p,g,addit,gP,IsEqualProjectivePoint;

##start local fcn: represent same projective point?
IsEqualProjectivePoint:=function(P1,P2)
# P1 = [x1,y1,z1]
# P2 = [x2,y2,z2]
# returns true iff P1=lambda*P2
local lambda,F;
F:=DefaultField(P1[1]);
if P1[1]<>Zero(F) then
   lambda:=P2[1]/P1[1];
 elif P1[2]<>Zero(F) then
   lambda:=P2[2]/P1[2];
 else
   lambda:=P2[3]/P1[3];
fi;
return P1*lambda=P2;
end;
##end local fcn

O:=[P];
for g in G do
 gP:=g*P;
 addit:=true;
 for p in O do
  if IsEqualProjectivePoint(gP,p) then
     addit:=false;
     break;
  fi;
 od;
 if addit then
     O:=Concatenation(O,[gP]);
 fi;
od;
return O;
end);



###########################################################
#
#            ag error-correcting codes stuff
#
###########################################################


###########################################################
##
#F      EvaluationBivariateCode(<P>, <L>, <crv> )
##
##  Automatically removes the 'bad' points (poles or points
##  not on the curve from <P>.
##
## Input: <P> are points in F^2, F=finite field,
##        <L> is a list of ratl fcns on <crv>
## Output: associated evaluation code
##
InstallMethod(EvaluationBivariateCode, true, [IsList,IsList,IsRecord], 0,
function(P,L,crv)
 local pos,R,F,f,p,i,goodpts,badpts,G, n,valsdenom,C, j, k,vals,vars;

 R:=crv.ring;
 F:=CoefficientsRing(R);
 n:=Length(P); ## "designed" length (may shrink,
               ##  if bad points (poles of an f in L) exist)
 k:=Length(L); ## "designed" dimension

 vars:=IndeterminatesOfPolynomialRing(R);
 valsdenom:=function(f,p) return
    Value(DenominatorOfRationalFunction(f*vars[1]^0),vars,p);
 end;
 vars:=IndeterminatesOfPolynomialRing(R);

 goodpts:=[];
 badpts:=[];
 for p in P do
  if (ForAll([1..k],i->valsdenom(L[i],p)<>Zero(F)) and OnCurve([p],crv)) then
    goodpts:=Concatenation(goodpts,[p]);
   else
    badpts:=Concatenation(badpts,[p]);
  fi;
 od;
 if badpts<>[] then
   Print("\n\n Automatically removed the following 'bad' points (either a pole or not on the curve):\n",badpts,"\n\n");
 fi;
 vals:=List(L,f->List(goodpts,p->Value(f,vars,p)));
 G:=ShallowCopy(NullMat(k,Length(goodpts),F));
 for i in [1..k] do
  for j in [1..Length(goodpts)] do
       pos:=Position(P,goodpts[j]);
       G[i][j]:=vals[i][j];
  od;
 od;
 C:=GeneratorMatCode(G," evaluation code",F);
 C!.GeneratorMat:=ShallowCopy(G);
 C!.basis:=L;
 C!.points:=goodpts;
 C!.ring:=R;
 return C;
end);

###########################################################
##
#F      EvaluationBivariateCodeNC(<Pts>, <L>, <crv> )
##
##  Does Not Check if points are 'bad'
##
## Input: <Pts> are points in F^2, F=finite field,
##        <L> is a list of ratl fcns on <crv>
## Output: associated evaluation code
##
InstallMethod(EvaluationBivariateCodeNC, true, [IsList,IsList,IsRecord], 0,
function(P,L,crv)
 local pos,R,F,f,p,i,goodpts,badpts,G, n,valsdenom,C, j, k,vals,vars;

 R:=crv.ring;
 F:=CoefficientsRing(R);
 n:=Length(P); ## "designed" length (may shrink,
               ##  if bad points (poles of an f in L) exist)
 k:=Length(L); ## "designed" dimension

 vars:=IndeterminatesOfPolynomialRing(R);
 valsdenom:=function(f,p) return
    Value(DenominatorOfRationalFunction(f*vars[1]^0),vars,p);
 end;
 vars:=IndeterminatesOfPolynomialRing(R);

 goodpts:=P;
 vals:=List(L,f->List(goodpts,p->Value(f,vars,p)));
 G:=ShallowCopy(NullMat(k,Length(goodpts),F));
 for i in [1..k] do
  for j in [1..Length(goodpts)] do
       pos:=Position(P,goodpts[j]);
       G[i][j]:=vals[i][j];
  od;
 od;
 C:=GeneratorMatCode(G," evaluation code",F);
 C!.GeneratorMat:=ShallowCopy(G);
 C!.basis:=L;
 C!.points:=goodpts;
 C!.ring:=R;
 return C;
end);


############################################################
##
#F     GoppaCodeClassical(<div>,<pts>)
##
##          classical Goppa codes
##   Vaguely related to GeneralizedSrivastavaCode?
##   (Think of a weighted dual of a classical Goppa code of
##   an effective divisor of the form div = kP1+kP2+...+kPn?)
##
InstallMethod(GoppaCodeClassical, true, [IsRecord,IsList], 0,
function(div,pts)
local n,k,F,R,var,cdiv,sdiv,basis,G,C,f,p;
  R:=div.curve.ring;
  F:=CoefficientsRing(R);
  cdiv:=div.coeffs;
  sdiv:=div.support;
  if Intersection(sdiv,pts)<>[] then
    Error("\n divisor and points must be disjoint \n");
  fi;
  var:=IndeterminatesOfPolynomialRing(R);
  basis:=RiemannRochSpaceBasisP1(div);
  G:=List(basis,f->List(pts,p->Value(var[1]^0*f,[var[1]],[p])));
  return GeneratorMatCode(G,F);
end);

###########################################################
##
#F      XingLingCode(<k>, <R> )
##
## Input: <k> is an integer
##        <R> is a polynomial ring of one variable
## Output: associated evaluation code
## ######## seems to have a bug - F=GF(7), k=15 hangs ########
##
InstallMethod(XingLingCode, true, [IsInt,IsRing], 0,
function(k,R)
local i,j,e,q,F,FF,indets,xx,a,b,f,Pts,RatPts,IrrRatPts,G,C;
 e:=[];
 F:=CoefficientsRing(R);
 q:=Size(F);
 indets := IndeterminatesOfPolynomialRing(R);
 xx:=indets[1];
 a:=PrimitiveElement(F);
 FF:=FieldExtension(F,xx^2-a);
 IrrRatPts:=[];
 RatPts:=Elements(F);
 for b in FF do
  if not(b^q in F) then
   IrrRatPts:=Concatenation(IrrRatPts,[b]);
  fi;
 od;
 for i in [1..k] do
    for j in [i..k] do
     if (i=j and q*(i+1)<k and IsOddInt(q)) then
      e:=Concatenation(e,[2*xx^(q*i+i)]);
     fi;
     if (i=j and q*(i+1)<k and IsEvenInt(q)) then
      e:=Concatenation(e,[xx^(q*i+i)]);
     fi;
     if (i<j and q*(i+1)<k and q*(i+1)<k) then     ####nonsense??????
      e:=Concatenation(e,[xx^(q*j+i)+xx^(q*i+j)]);
     fi;
    od;
 od;
 if Size(e)=0 then
   Error("\n\n Please increase k (or decrease ground field size) and try again.\n\n");
 fi;
 G:=[];
 Pts:=Concatenation(RatPts,IrrRatPts);
 for f in e do
   G:=Concatenation(G,[List(Pts,p->Value(f,[xx],[p]))]);
 od;
 C:=GeneratorMatCode(G,F);
 return C;
end);