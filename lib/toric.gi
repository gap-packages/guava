#############################################################################
##
#A  toric.gi                  GUAVA library                      David Joyner
##
##  this file contains implementations for toric codes
##
##  added 11-2004:
##  GeneralizedReedMullerCode with "record" components
##     points, degree, GeneratorMat
##  added "record" components exponents, GeneratorMat to ToricCode
##

#############################################################################
##
#F  ToricPoints(<n>,<F>)
##
InstallGlobalFunction(ToricPoints,function(n,F)
local T,L,i,x0;
  T:=[];
  for x0 in AsList(F ) do
  if x0<>Zero(F) then Add(T,x0); fi;
  od;
  L:=Cartesian(List([1..n],i->T));
  return L;
end);

#############################################################################
##
#F  ToricCode(<L>,<F>)
##
InstallGlobalFunction(ToricCode,function(L,F)
local u,gens,d,V,n,i,v,B0,B,C,C1,t,e,tmpvar;
  gens:=L;
  d:=Size(gens[1]);
  n:=Size(ToricPoints(d,F));
  V:=F^n;         # VectorSpace(F,n);
  #Z:=Integers;   
  B0:=[];
  #e:=gens[1];
  for e in gens do
    #Print(e);
    tmpvar:=List(ToricPoints(d,F),t->Product([1..d],i->t[i]^e[i]));
    #Print(tmpvar, "\n");
    Add(B0,tmpvar);
  od;
  B:=BaseMat(One(F)*AsList(B0)); #Added the surrounding call to BaseMat to remove dependencies before calling GeneratorMatCode
  C:=GeneratorMatCode(B,F); ##uses guava command
  #C!.GeneratorMat:=ShallowCopy(B); #doing this can overrule the smaller GenMat which results when there is a dependency
  C!.GeneratorMat:=ShallowCopy(B); #After the above changes this should be cool
  C!.exponents:=L;
  C!.name:=" toric code";
  return C;
end);

# for compatibility ...
BindGlobal("ToricCodewords",function(L,F)
  return Elements(ToricCode(L,F));
end);

InstallMethod(GeneralizedReedMullerCode, "list of points,order,field,name", true,
    [IsList,IsInt,IsField], 0,
function(Pts,r,F)
## Pts=[p1,...,pn] are points in F^d
## for usual GRM code, take
##     pts:=Cartesian(List([1..d],i->Elements(F)));
## for some d>1.
## r is the degree of the polys in x1, ..., xd
## returns code with gen mat having rows
##  (f(p1),...,f(pn)) with f a monomial x1^e1...xd^ed
##  with e1+...+ed<=r
##
local C, B, q, n, row, B0, L, exps, Ld, i, x, e, d, t;
  q:=Size(F);
  d:=Length(Pts[1]);
  L:=[0..Minimum(q-1,r)];
  Ld:=Cartesian(List([1..d],i->L));
  exps:=Filtered(Ld,x->Sum(x)<=r);
  n:=Size(Pts);
  B0:=[];
  for e in exps do
    row:=List(Pts,t->Product([1..d],i->t[i]^e[i]));
    Add(B0,row);
  od;
  B:=One(F)*AsList(B0);
  C:=GeneratorMatCode(B," generalized Reed-Muller code",F);
  C!.GeneratorMat:=ShallowCopy(B);
  C!.points:=Pts;
  C!.degree:=r;
return C;
end);

InstallOtherMethod(GeneralizedReedMullerCode, "number of vars,order,field", true,
    [IsInt,IsInt,IsField], 0,
function(d,r,F)
## Pts=[p1,...,pn] are *all* points in F^d
## take
##     pts:=Cartesian(List([1..d],i->Elements(F)));
## r is the degree of the polys in x1, ..., xd
## returns code with gen mat having rows
##  (f(p1),...,f(pn)) with f a monomial x1^e1...xd^ed
##  with e1+...+ed<=r
##
local pts, i;
  pts:=Cartesian(List([1..d],i->Elements(F)));
  return GeneralizedReedMullerCode(pts,r,F);
end);