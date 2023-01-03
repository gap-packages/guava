#############################################################################
##
#A  util2.gi                GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##                                                              &David Joyner
##
##  This file contains miscellaneous functions
##
## minor bug in SortedGaloisFieldElements fixed 9-24-2004
## several functions added 12-16-2005 MostCommonInList,
##       MultiplicityInList, VandermondeMat
## added 5-13-2005:
##   RotateList, CirculantMatrix, ZechLog,
##   MatrixRepresentationOfElement,IrreduciblePolynomialsNr,
##   PrimitivePolynomialsNr, TraceCode, CodeLength
## added 12-4-2005, 1-3-206: GuavaVersion. guava_version
## 22 May 2006 (CJ): modified GuavaVersion so that the version
##   information is obtained directly from "PackageInfo"
## 26 Dec 2007 (CJ): added RightRotateList and NegacirculantMatrix
##   functions
##


########################################################################
##
#F  AllOneVector( <n> [, <field> ] )
##
##  Return a vector with all ones.
##

InstallMethod(AllOneVector, "length, Field", true, [IsInt, IsField], 0,
function(n, F)
    if n <= 0 then
        Error( "AllOneVector: <n> must be a positive integer" );
    fi;
    return List( [ 1 .. n ], x -> One(F) );
end);

InstallOtherMethod(AllOneVector, "length, fieldsize", true, [IsInt, IsInt], 0,
function(n, q)
    return AllOneVector(n, GF(q));
end);

InstallOtherMethod(AllOneVector, "length", true, [IsInt], 0,
function(n)
    return AllOneVector(n, Rationals);
end);


########################################################################
##
#F  AllOneCodeword( <n>, <field> )
##
##  Return a codeword with <n> ones.
##

InstallMethod(AllOneCodeword, "wordlength, field", true, [IsInt, IsField], 0,
function(n, F)
    if n <= 0 then
        Error( "AllOneCodeword: <n> must be a positive integer" );
    fi;
    return Codeword( AllOneVector( n, F ), F );
end);

InstallOtherMethod(AllOneCodeword, "wordlength, fieldsize", true,
    [IsInt, IsInt], 0,
function(n, q)
    return AllOneCodeword(n, GF(q));
end);

InstallOtherMethod(AllOneCodeword, "wordlength", true, [IsInt], 0,
function(n)
    return AllOneCodeword(n, GF(2));
end);


#############################################################################
##
#F  IntCeiling( <r> )
##
##  Return the smallest integer greater than or equal to r.
##  3/2 => 2,  -3/2 => -1.
##

InstallMethod(IntCeiling, "method for integer", true, [IsInt], 0,
function(r)
    # don't round integers
    return r;
end);

InstallMethod(IntCeiling, "method for rational", true, [IsRat], 0,
function(r)
    if r > 0 then
        # round positive numbers to smallest integer
        # greater than r (3/2 => 2)
        return Int(r)+1;
    else
        # round negative numbers to smallest integer
        # greater than r (-3/2 => -1)
        return Int(r);
    fi;
end);


########################################################################
##
#F  IntFloor( <r> )
##
##  Return the greatest integer smaller than or equal to r.
##  3/2 => 1, -3/2 => -2.
##

InstallMethod(IntFloor, "method for integer", true, [IsInt], 0,
function(r)
    # don't round integers
    return r;
end);

InstallMethod(IntFloor, "method for rational", true, [IsRat], 0,
function(r)
    if r > 0 then
        # round positive numbers to largest integer
        # smaller than r (3/2 => 1)
        return Int(r);
    else
        # round negative numbers to largest integer
        # smaller than r (-3/2 => -2)
        return Int(r-1);
    fi;
end);


########################################################################
##
#F  KroneckerDelta( <i>, <j> )
##
##  Return 1 if i = j,
##         0 otherwise
##

InstallMethod(KroneckerDelta, true, [IsInt, IsInt], 0,
function ( i, j )

    if i = j then
        return 1;
    else
        return 0;
    fi;

end);


########################################################################
##
#F  BinaryRepresentation( <elements>, <length> )
##
##  Return a binary representation of an element
##  of GF( 2^k ), where k <= length.
##
##  The representation is actually the binary
##  representation of k+1, where k is the exponent
##  of the element, taken in the field 2^length.
##  For example, Z(16)^10 = Z(4)^2.  If length = 4,
##  the binary representation 1011 = 11(base 10)
##  is returned.  If length = 2, the binary
##  representation 11 = 3(base 10) is returned.
##
##  If elements is a list, then return the binary
##  representation of every element of the list.
##
##  This function is used to make to Gabidulin codes.
##  It is not intended to be a global function, but including
##  it in all five Gabidulin codes is a bit over the top
##
##  Therefore, no error checking is done.
##

BinaryRepresentation := function ( elementlist, length )

    local field, i, log, vector, element;

    if IsList( elementlist ) then
        return( List( elementlist,
                      x -> BinaryRepresentation( x, length ) ) );
    else

        element := elementlist;
        field := Field( element );

        vector := NullVector( length, GF(2) );

        if element = Zero(field) then
            # exception, log is not defined for zeroes
            return vector;
        else
            log := LogFFE( element, Z(2^length) ) + 1;

            for i in [ 1 .. length ] do
                if log >= 2^( length - i ) then
                    vector[ i ] := One(GF(2));
                    log := log - 2^( length - i );
                fi;
            od;

            return vector;
        fi;
    fi;
end;


########################################################################
##
#F  SortedGaloisFieldElements( <size> )
##
##  Sort the field elements of size <size> according to
##  their log.
##
##  This function is used to make to Gabidulin codes.
##  It is not intended to be a global function, but including
##  it in all five Gabidulin codes is not a good idea.
##

SortedGaloisFieldElements := function ( size )

    local field, els, sortlist, alpha;

    if IsInt( size ) then
        field := GF( size );
    else
        field := size;
        size := Size( field );
    fi;
    alpha:=PrimitiveRoot( field );
# this line was moved from immed after the local statement 9-2004
    els := ShallowCopy(AsSSortedList( field ));
    sortlist := NullVector( size );
    # log 1 = 0, so we add one to each log to avoid
    # conflicts with the 0 for zero.

    sortlist := List( els, function( x )
        if x = Zero(field) then
            return 0;
        else
            return LogFFE( x, alpha ) + 1;
        fi;
        end );

    sortlist{ [ 2 .. size ] } := List( els { [ 2 .. size ] },
                                 x -> LogFFE( x, alpha ) + 1 );
    SortParallel( sortlist, els );

    return els;
end;

########################################################################
##
#F  VandermondeMat( <Pts> , <a> )
##
## Input: Pts=[x1,..,xn], a >0 an integer
## Output: Vandermonde matrix (xi^j),
##         for xi in Pts and 0 <= j <= a
##         (an nx(a+1) matrix)
##
InstallMethod(VandermondeMat, true, [IsList, IsInt], 0,
function(Pts,a)
 local V,n,i,j;
 n:=Length(Pts);
 V:=List([1..(a+1)],j->List([1..n],i->Pts[i]^(j-1)));
 return TransposedMat(V);
end);

###########################################################
##
#F    MultiplicityInList(L,a)
##
## Input: a list L
##        an element a of L
## Output: the multiplicity a occurs in L
##
MultiplicityInList:=function(L,a)
local mult,b;
  mult:=0;
  for b in L do
   if b=a then mult:=mult+1; fi;
  od;
  return mult;
end;

###########################################################
##
#F    MostCommonInList(L,a)
##
## Input: a list L
## Output: an a in L which occurs at least as much as any other in L
##
MostCommonInList:=function(L)
local mults,max,maxi,x;
  mults:=List(L,x->MultiplicityInList(L,x));
  max:=Maximum(mults);
  maxi:=Position(mults,max);
  return L[maxi];
end;

###########################################################
##
#F    RotateList(L)
##
## Input: a list L
## Output: cyclic rotation of the list (to the right)
##
RotateList:=function(L)
local rL,i,n;
 n:=Length(L);
 rL:=[];
 for i in [1..n] do
  if i<n then rL[i]:=L[i+1]; fi;
  if i=n then rL[i]:=L[1]; fi;
 od;
 return rL;
end;

###########################################################
##
#F RightRotateList(L)
##
## Input: a list L
## Output: cyclic rotation of the list (to the right)
##         RotateList function seems to rotate to the left ??
##         Am I losing my direction now? left, right?
##
RightRotateList:=function(L)
    local rL,i,n;

    n :=Length(L);
    rL:=[];
    rL[1] := L[n];
    for i in [1..(n-1)] do
        rL[n-i+1] := L[n-i];
    od;

    return rL;
end;

###########################################################
##
#F    CirculantMatrix(k,L)
##
## Input: integer k, a list L of length n
## Output: kxn matrix whose rows are cyclic rotations of the list L
##
CirculantMatrix:=function(k,L)
local M,i,rL;
 rL:=L;
 M:=[L];
 for i in [1..(k-1)] do
  rL:=RightRotateList(rL);
  M:=Concatenation(M,[rL]);
 od;
 return M;
end;

###########################################################
##
#F    NegacirculantMatrix(k,L)
##
## Input: integer k, a list L of length n
## Output: kxk matrix whose rows are cyclic (right) rotations
##         of the list L
## NOTE: RotateList function is not used as it generates
##       cyclic rotation to the left. RightRotateList
##       function is used instead.
##
NegacirculantMatrix:=function(k,L)
    local M, rL, i;

    if k <> Size(L) then
        Error("Negacirculant matrix must be a square matrix\n");
    fi;

    rL:= L;
    M := [L];
    for i in [1..(k-1)] do;
        # generate nega cyclic shift (to the right)
        rL := RightRotateList(rL);
        rL[1] := -rL[1];
        M := Concatenation(M, [rL]);
    od;
    return M;
end;

###############################################
### some "convenience functions":

CodeLength:= function (C)
 return WordLength(C);
end;

TraceCode:= function (C,F)
# Input: C is a linear code defined over an extension E of F
# (F is base field)
# Output: The linear code generated by Tr_{E/F}(c), c in C
# ****extremely slow**** so hesitant to include in codesfun.gi
local FF, TC, TrC, i, n, c;
 n:= WordLength(C);
 FF:= LeftActingDomain(C);
 TC:= List(C,c->Codeword(List([1..n],i->Trace(FF,F,c[i]))));
 TrC:=ElementsCode(TC, F);
 IsLinearCode(TrC);
 return TrC;
end;

###################### finite field functions
## see also ConwayPolynomial
## IsPrimitivePolynomial, for p < 256
## IsCheapConwayPolynomial
## RandomPrimitivePolynomial
##

PrimitivePolynomialsNr:=function(n,q)
#n is an integer>1
#F is a finite field
#FACT (Golomb): The number of irreducible polynomials mod p of degree n
#with (maximum) period p^n-1 is lambda(n,p)=phi(p^n-1)/n).
local period;
 #q:=Size(F);
 if n<2 then
   Error("\n\n First arg must be > 1.\n");
 fi;
 return Phi(q^n-1)/n;
end;

IrreduciblePolynomialsNr:=function(n,q)
#FACT (Golomb): The number of irreducible polynomials in GF(q)[x] of degree n
#is Psi0(n,p).
 local d;
 return (1/n)*Sum(DivisorsInt(n),d->q^d*MoebiusMu(n/d));
end;

MatrixRepresentationOfElement:=function(a,F)
#returns the matrix representation of
#the element a
local q,p,d,A,i,j,f,coeffs,c0,Id;
 p:=Characteristic(F);
 if p>0 then
   q:=Size(F);
  # d:=LogInt(q,p);
   f:=MinimalPolynomial(GF(p),a);
   A:=CompanionMat(f);
  # Id:=IdentityMat(d,F);
   return A;
 fi;
 if p=0 then
   f:=MinimalPolynomial(Rationals,a);
   A:=CompanionMat(f);
  # Id:=IdentityMat(d,F);
   return A;
 fi;
end;

ZechLog:=function(x,b,F)
#Zech log of x to base b, ie the i such that x+1=b^i,
# so y+z=y*(1+z/y)=b^k, where k=Log(y,b)+ZechLog(z/y,b)
# b must be a primitive element of F
 return LogFFE(x+One(F),b);
end;

GuavaVersion:=function()
# prints current version
#local version;
# version:="2.5";
# return version;
  return PackageInfo("guava")[1].Version;
end;

guava_version:=function()
# prints current version
 return GuavaVersion();
end;

InstallMethod(SupportToCodeword, "set, wordlength", true, [IsSet, IsInt], 0,
function(s, n)
 local v,i;
 v := NullVector(n,GF(2));
 for i in s do
   if (i > n) or (i<1) then
      Error("Support elements should lie between 1 and n");
   fi;
   v[i]:=1;
 od;
 return Codeword(v,n,GF(2));
end);
