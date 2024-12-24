#############################################################################
##
#A  codegen.gi              GUAVA library                       Reinald Baart
#A                                                        &Jasper Cramwinckel
#A                                                           &Erik Roijackers
##                                                          &David Joyner
##
##  This file contains info/functions for generating codes
##
##  BCHCode modified 9-2004
##  added 11-2004:
##  comment in GoppaCode
##  GeneralizedReedSolomonCode and record fields
##      points, degree, ring,
##  (added SpecialDecoder field later: SetSpecialDecoder(C, GRSDecoder);)
##  EvaluationCode and record fields
##      points, basis, ring,
##  OnePointAGCode and record fields
##      points, curve, multiplicity, ring
##  weighted option for GeneralizedReedSolomonCode and record fields
##      points, degree, ring, weights
##  minor bug in EvaluationCode fixed 11-26-2004
##  GeneratorMatCodeNC added 12-18-2004 (after release of guava 2.0)
##  added 5-10-2005:  SetSpecialDecoder(C, CyclicDecoder);  to
##    the cyclic codes which are not BCH codes
##    in codegen.gi, line 2066, replace C.GeneratorMat
##      by C.EvaluationMat
##  added 5-13-2005: QQRCode
##  added 11-27-2005: CheckMatCodeMutable with *mutable*
##              generator and check matrices
##  added 1-10-2006: QQRCodeNC  Greg Coy and David Joyner
##  added 1-2006: FerreroDesignCode, written with Peter Mayr
##  added 12-2007 (CJ): ExtendedReedSolomonCode, QuasiCyclicCode,
##    CyclicMDSCode, FourNegacirculantSelfDualCode functions.
##

DeclareRepresentation( "IsCodeDefaultRep",
               IsAttributeStoringRep and IsComponentObjectRep and IsCode,
               ["name", "history", "lowerBoundMinimumDistance",
                "upperBoundMinimumDistance", "boundsCoveringRadius"]);

DeclareHandlingByNiceBasis( "IsLinearCodeRep", "for linear codes" );

InstallTrueMethod( IsLinearCode, IsLinearCodeRep );

#T The following is of course a hack, as is much of the
#T ``pretend as if you were a vector space'' stuff.
#T (`IsLinearCode' changes harmless codes into vector spaces;
#T `AsLinearCode' would be clean, but now it is too late ...)
InstallTrueMethod( IsFreeLeftModule, IsLinearCodeRep );

### functions to work with NiceBasis functionality for Linear Codes.
InstallHandlingByNiceBasis( "IsLinearCodeRep", rec(
    detect:= function( R, gens, V, zero )
      return IsCodewordCollection( V );
      end,

    NiceFreeLeftModuleInfo:= ReturnFalse,

    NiceVector:= function( C, w )
      return VectorCodeword( w );
      end,

    UglyVector:= function( C, v )
      return Codeword( v, Length( v ), LeftActingDomain( C ) );
    end ) );


#############################################################################
##
#F  ElementsCode( <L> [, <name> ], <F> )  . . . . . . code from list of words
##

InstallMethod(ElementsCode, "list,name,Field", true,
    [IsList,IsString,IsField], 0,
function(L, name, F)
    local test, C;
    L := Codeword(L, F);
    test := WordLength(L[1]);
    if ForAny(L, i->WordLength(i) <> test) then
        Error("All elements must have the same length");
    fi;
    test := FamilyObj(L[1]);
    if ForAny(L, i->FamilyObj(i) <> test) then
        Error ("All elements must have the same family");
    fi;
    L := Set(L);
    C := Objectify(NewType(CollectionsFamily(test), IsCodeDefaultRep), rec());
    SetLeftActingDomain(C, F);
    SetAsSSortedList(C, L);
    C!.name := name;
    return C;
end);

InstallOtherMethod(ElementsCode, "list,Field", true, [IsList, IsField], 0,
function(L,F)
    return ElementsCode(L, "user defined unrestricted code", F);
end);

InstallOtherMethod(ElementsCode, "list,name,fieldsize", true,
    [IsList, IsString, IsInt], 0,
function(L, name, q)
    return ElementsCode(L, name, GF(q));
end);

InstallOtherMethod(ElementsCode, "list,size of field", true, [IsList,IsInt], 0,
function(L, q)
    return ElementsCode(L, "user defined unrestricted code", GF(q));
end);

##Create a linear code from a list of Codeword generators
LinearCodeByGenerators := function(F, gens)

    local V;
    V:= Objectify( NewType( FamilyObj( gens ),
                            IsLeftModule and
                IsLinearCodeRep and IsCodeDefaultRep ),
                   rec() );
    SetLeftActingDomain( V, F );
    SetGeneratorsOfLeftModule( V, AsList( One(F)*gens ) );
    SetIsLinearCode(V, true);
    SetWordLength(V, Length(gens[1]));
    return V;

end;


#############################################################################
##
#F  RandomCode( <n>, <M> [, <F>] )  . . . . . . . .  random unrestricted code
##
InstallMethod(RandomCode, "wordlength,codesize,field", true,
    [IsInt, IsInt, IsField], 0,
function(n, M, F)
    local L;
    if Size(F)^n < M then
        Error(Size(F),"^",n," < ",M);
    fi;
    L := [];
    while Length(L) < M do
        AddSet(L, List([1..n], i -> Random(F)));
    od;
    return ElementsCode(L, "random unrestricted code", F);
end);

InstallOtherMethod(RandomCode, "wordlength,codesize", true, [IsInt, IsInt], 0,
function(n, M)
    return RandomCode(n, M, GF(2));
end);

InstallOtherMethod(RandomCode, "wordlength,codesize,fieldsize", true,
    [IsInt, IsInt, IsInt], 0,
function(n, M, q)
    return RandomCode(n, M, GF(q));
end);


#############################################################################
##
#F  HadamardCode( <H | n> [, <t>] ) . Hadamard code of <t>'th kind, order <n>
##

InstallMethod(HadamardCode, "matrix, kind (int)", true, [IsMatrix, IsInt], 0,
function(H, t)
    local n, vec, C;
    n := Length(H);
    if H * TransposedMat(H) <> n * IdentityMat(n,n) then
        Error("The matrix is not a Hadamard matrix");
    fi;
    H := (H-1)/(-2);
    if t = 1 then
        H := TransposedMat(TransposedMat(H){[2..n]});
        C := ElementsCode(H, Concatenation("Hadamard code of order ",
                          String(n)), GF(2) );
        C!.lowerBoundMinimumDistance := n/2;
        C!.upperBoundMinimumDistance := n/2;
        vec := NullVector(n);
        # this was ... := NullVector(n+1);
        # but this seems to be wrong -- Eric Minkes
        vec[1] := 1;
        vec[n/2+1] := Size(C) - 1;
        SetInnerDistribution(C, vec);
    elif t  = 2 then
        H := ShallowCopy( TransposedMat(TransposedMat(H){[2..n]}) );
        Append(H, 1 - H);
        C := ElementsCode(H, Concatenation("Hadamard code of order ",
                                          String(n)), GF(2) );
        C!.lowerBoundMinimumDistance := n/2 - 1;
        C!.upperBoundMinimumDistance := n/2 - 1;
        vec := NullVector(n);
        vec[1] := 1;
        vec[n] := 1;
        # this was ... [n+1]...
        # but this seems to be wrong -- Eric Minkes
        vec[n/2] := Size(C)/2 - 1;
        vec[n/2+1] := Size(C)/2 - 1;
        SetInnerDistribution(C, vec);
    else
        Append(H, 1 - H);
        C := ElementsCode( H, Concatenation("Hadamard code of order ",
                               String(n)), GF(2) );
        C!.lowerBoundMinimumDistance := n/2;
        C!.upperBoundMinimumDistance := n/2;
        vec := NullVector(n);
        vec[1] := 1;
        vec[n+1] := 1;
        vec[n/2+1] := Size(C) - 2;
        SetInnerDistribution(C, vec);
    fi;
    return(C);
end);

InstallOtherMethod(HadamardCode, "order, kind (int)", true, [IsInt, IsInt], 0,
function(n, t)
    return HadamardCode(HadamardMat(n), t);
end);

InstallOtherMethod(HadamardCode, "matrix", true, [IsMatrix], 0,
function(H)
    return HadamardCode(H, 3);
end);

InstallOtherMethod(HadamardCode, "order", true, [IsInt], 0,
function(n)
    return HadamardCode(HadamardMat(n), 3);
end);

InstallOtherMethod(HadamardCode, "matrix, kind (string)", true,
    [IsMatrix, IsString], 0,
function(H, t)
    if t in ["a", "A", "1"] then
        return HadamardCode(H, 1);
    elif t in ["b", "B", "2"] then
        return HadamardCode(H, 2);
    else
        return HadamardCode(H, 3);
    fi;
end);

InstallOtherMethod(HadamardCode, "order, kind (string)", true,
    [IsInt, IsString], 0,
function(n, t)
    if t in ["a", "A", "1"] then
        return HadamardCode(HadamardMat(n), 1);
    elif t in ["b", "B", "2"] then
        return HadamardCode(HadamardMat(n), 2);
    else
        return HadamardCode(HadamardMat(n), 3);
    fi;
end);

#############################################################################
##
#F  ConferenceCode( <n | M> ) . . . . . . . . . . code from conference matrix
##

InstallMethod(ConferenceCode, "matrix", true, [IsMatrix], 0,
function(S)
    local n, I, J, F, els, w, wd, C;
    n := Length(S);
    if S*TransposedMat(S) <> (n-1)*IdentityMat(n) or
       TransposedMat(S) <> S then
       Error("argument must be a symmetric conference matrix");
    fi;
    # Normalize S by multiplying rows and columns:
    for I in [2..n] do
        if S[I][1] <> 1 then
            for J in [1..n] do
                S[I][J] := S[I][J] * -1;
            od;
        fi;
    od;
    for J in [2..n] do
        if S[1][J] <> 1 then
            for I in [1..n] do
                S[I][J] := S[I][J] * -1;
            od;
        fi;
    od;
    # Strip first row and first column:
    S := List([2..n], i-> S[i]{[2..n]});
    n := n - 1;

    F := GF(2);
    els := [NullWord(n, F)];
    I := IdentityMat(n);
    J := NullMat(n,n) + 1;
    Append(els, Codeword(1/2 * (S+I+J), F));
    Append(els, Codeword(1/2 * (-S+I+J), F));
    Add( els, Codeword( List([1..n], x -> One(F) ), n, One(F) ) );
    C := ElementsCode( els, "conference code", F);
    w := Weight(AsSSortedList(C)[2]);
    wd := List([1..n+1], x -> 0);
    wd[1] := 1; wd[n+1] := 1;
    wd[w+1] := Size(C) - 2;
    SetWeightDistribution(C, wd);
    C!.lowerBoundMinimumDistance := (n-1)/2;
    C!.upperBoundMinimumDistance := (n-1)/2;
    return C;
end);

InstallOtherMethod(ConferenceCode, "integer", true, [IsInt], 0,
function(n)
    local LegendreSym, zero, QRes, E, I, S, F, els, J, w, wd, C;

    LegendreSym := function(i)
        if i = zero then
            return 0;
        elif i in QRes then
            return 1;
        else
            return -1;
        fi;
    end;

    if (not IsPrimePowerInt(n)) or (n mod 4 <> 1) then
        Error ("n must be a primepower and n mod 4 = 1");
    fi;
    E := AsSSortedList(GF(n));
    zero := E[1];
    QRes := [];
    for I in E do
        AddSet(QRes, I^2);
    od;
    S := List(E, i->List(E, j->LegendreSym(j-i)));


    F := GF(2);
    els := [NullWord(n, F)];
    I := IdentityMat(n);
    J := NullMat(n,n) + 1;
    Append(els, Codeword(1/2 * (S+I+J), F));
    Append(els, Codeword(1/2 * (-S+I+J), F));
    Add(   els, Codeword( List([1..n], x -> One(F) ), n, One(F) ) );
    C := ElementsCode( els, "conference code", F);
    w := Weight(AsSSortedList(C)[2]);
    wd := List([1..n+1], x -> 0);
    wd[1] := 1; wd[n+1] := 1;
    wd[w+1] := Size(C) - 2;
    SetWeightDistribution(C, wd);
    C!.lowerBoundMinimumDistance := (n-1)/2;
    C!.upperBoundMinimumDistance := (n-1)/2;
    return C;
end);


#############################################################################
##
#F  MOLSCode( [ <n>, ] <q> )  . . . . . . . . . . . . . . . .  code from MOLS
##
##  MOLSCode([n, ] q) returns a (n, q^2, n-1) code over GF(q)
##  by creating n-2 mutually orthogonal latin squares of size q.
##  If n is omitted, a wordlength of 4 will be set.
##  If there are no n-2 MOLS known, the code will return an error
##

InstallMethod(MOLSCode, "wordlength,size of field", true, [IsInt, IsInt], 0,
function(n,q)
    local M, els, i, j, k, wd, C;
    M := MOLS(q, n-2);
    if M = false then
        Error("No ", n-2, " MOLS of order ", q, " are known");
    else
        els := [];
        for i in [1..q] do
            for j in [1..q] do
                els[(i-1)*q+j] := [];
                els[(i-1)*q+j][1] := i-1;
                els[(i-1)*q+j][2]:= j-1;
                for k in [3..n] do
                    els[(i-1)*q+j][k]:= M[k-2][i][j];
                od;
            od;
        od;
        C := ElementsCode( els, Concatenation("code generated by ",
                         String(n-2), " MOLS of order ", String(q)), GF(q) );
        C!.lowerBoundMinimumDistance := n - 1;
        C!.upperBoundMinimumDistance := n - 1;
        wd := List( [1..n+1], x -> 0 );
        wd[1] := 1;
        wd[n] := (q-1) * n;
        wd[n+1] := (q-1) * (q + 1 - n);
        SetWeightDistribution(C, wd);
        return C;
    fi;
end);

InstallOtherMethod(MOLSCode, "wordlength,field", true, [IsInt, IsField], 0,
function(n, F)
    return MOLSCode(n, Size(F));
end);

InstallOtherMethod(MOLSCode, "fieldsize", true, [IsInt], 0,
function(q)
    return MOLSCode(4, q);
end);

InstallOtherMethod(MOLSCode, "field", true, [IsField], 0,
function(F)
    return MOLSCode(4, Size(F));
end);


## Was commented out in gap 3.4.4 Guava version.

#############################################################################
##
#F  QuadraticCosetCode( <Q> ) . . . . . . . . . .  coset of RM(1,m) in R(2,m)
##
##  QuadraticCosetCode(Q) returns a coset of the ReedMullerCode of
##  order 1 (R(1,m)) in R(2,m) where m is the size of square matrix Q.
##  Q is the upper triangular matrix that defines the quadratic part of
##  the boolean functions that are in the coset.
##
#QuadraticCosetCode := function(arg)
#    local Q, m, V, R, RM1, k, f, C, h, wd;
#    if Length(arg) = 1 and IsMat(arg[1]) then
#        Q := arg[1];
#    else
#        Error("usage: QuadraticCosetCode( <mat> )");
#    fi;
#    m := Length(Q);
#    V := Tuples(Elements(GF(2)), m);
#    R := V*Q*TransposedMat(V);
#    f := List([1..2^m], i->R[i][i]);
#    RM1 := Concatenation(NullMat(1,2^m,GF(2))+GF(2).one,
#                   TransposedMat(Tuples(Elements(GF(2)), m)));
#    k := Length(RM1);
#    C := rec(
#             isDomain := true,
#             isCode := true,
#             operations := CodeOps,
#             baseField := GF(2),
#             wordLength := 2^m,
#    elements := Codeword(List(Tuples(Elements(GF(2)), k) * RM1, t-> t+f)),
#             lowerBoundMinimumDistance := 2^(m-1),
#             upperBoundMinimumDistance := 2^(m-1)
#            );
#    h := RankMat(Q + TransposedMat(Q))/2;
#    wd := NullMat(1, 2^m+1)[1];
#    wd[2^(m-1) - 2^(m-h-1) + 1] := 2^(2*h);
#    wd[2^(m-1) + 1] := 2^(m+1) - 2^(2*h + 1);
#    wd[2^(m-1) + 2^(m-h-1) + 1] := 2^(2*h);
#    C.weightDistribution := wd;
#    C.name := "quadratic coset code";
#    return C;
#end;


#############################################################################
##
#F  GeneratorMatCode( <G> [, <name> ], <F> )  . .  code from generator matrix
##

InstallMethod(GeneratorMatCode, "generator matrix, name, field", true,
    [IsMatrix, IsString, IsField], 0,
function(G, name, F)
    local C;
    if (Length(G) = 0) or (Length(G[1]) = 0) then
        Error("Use NullCode to generate a code with dimension 0");
    fi;
    G := G*One(F);
    G := BaseMat(G);
    C := LinearCodeByGenerators(F, Codeword(G,F));
    SetGeneratorMat(C, G);
    SetWordLength(C, Length(G[1]));
    C!.name := name;
    return C;
end);

InstallOtherMethod(GeneratorMatCode, "generator matrix, field", true,
    [IsMatrix, IsField], 0,
function(G, F)
    return GeneratorMatCode(G, "code defined by generator matrix", F);
end);

InstallOtherMethod(GeneratorMatCode, "generator matrix, name, size of field",
    true, [IsMatrix, IsString, IsInt], 0,
function(G, name, q)
    return GeneratorMatCode(G, name, GF(q));
end);

InstallOtherMethod(GeneratorMatCode, "generator matrix, size of field", true,
    [IsMatrix, IsInt], 0,
function(G, q)
    return GeneratorMatCode(G, "code defined by generator matrix", GF(q));
end);

#############################################################################
##
#F  GeneratorMatCodeNC( <G> , <F> )  . .  code from generator matrix
##
## same as GeneratorMatCode but does not compute upper + lower bounds
##  for the minimum distance or covering radius
##

InstallMethod(GeneratorMatCodeNC, "generator matrix, field", true,
    [IsMatrix, IsField], 0,
function(G, F)
    return GeneratorMatCode(G, "code defined by generator matrix, NC", F);
end);



#############################################################################
##
#F  CheckMatCodeMutable( <H> [, <name> ], <F> )  . . code from check matrix
##                                               The generator matrix is mutable
##

InstallMethod(CheckMatCodeMutable, "check matrix, name, field", true,
    [IsMatrix, IsString, IsField], 0,
function(H, name, F)
    local G, H2, C, dimC;
    if (Length(H) = 0)  or (Length(H[1]) = 0) then
        Error("use WholeSpaceCode to generate a code with redundancy 0");
    fi;
    H := VectorCodeword(Codeword(H, F));
    H2 := BaseMat(H);
    if Length(H2) < Length(H) then
        H := H2;
    fi;

    # Get generator matrix from H
    if IsInStandardForm(H, false) then
        dimC := Length(H[1]) - Length(H);
        if dimC = 0 then
            G := [];
        else
            G := TransposedMat(Concatenation(IdentityMat( dimC, F ),
                            List(-H, x->x{[1..dimC]})));
        fi;
    else
        G := NullspaceMat(TransposedMat(H));
    fi;
    if Length(G) = 0 then  # Call NullCode. Length(H=I) = n-k, in this case.
                           # Length(G) = k = 0 => n = Length(H).
        C := NullCode(Length(H), F);
        C!.name := name;
        return C;
    fi;

    C := LinearCodeByGenerators(F,Codeword(G, F));
    SetGeneratorMat(C, ShallowCopy(G));
    SetCheckMat(C, ShallowCopy(H));
    SetWordLength(C, Length(G[1]));
    C!.name := name;
    return C;
end);

InstallOtherMethod(CheckMatCodeMutable, "check matrix, field",
true, [IsMatrix, IsField], 0,
function(H, F)
    return CheckMatCode(H, "code defined by check matrix", F);
end);

InstallOtherMethod(CheckMatCodeMutable, "check matrix, name, size of field", true, [IsMatrix, IsString, IsInt], 0,
function(H, name, q)
    return CheckMatCode(H, name, GF(q));
end);

InstallOtherMethod(CheckMatCodeMutable, "check matrix, size of field",
true, [IsMatrix, IsInt], 0,
function(H, q)
    return CheckMatCodeMutable(H, "code defined by check matrix", GF(q));
end);



#############################################################################
##
#F  CheckMatCode( <H> [, <name> ], <F> )  . . . . . .  code from check matrix
##

InstallMethod(CheckMatCode, "check matrix, name, field", true,
    [IsMatrix, IsString, IsField], 0,
function(H, name, F)
    local G, H2, C, dimC;
    if (Length(H) = 0)  or (Length(H[1]) = 0) then
        Error("use WholeSpaceCode to generate a code with redundancy 0");
    fi;
    H := VectorCodeword(Codeword(H, F));
    H2 := BaseMat(H);
    if Length(H2) < Length(H) then
        H := H2;
    fi;

    # Get generator matrix from H
    if IsInStandardForm(H, false) then
        dimC := Length(H[1]) - Length(H);
        if dimC = 0 then
            G := [];
        else
            G := TransposedMat(Concatenation(IdentityMat( dimC, F ),
                            List(-H, x->x{[1..dimC]})));
        fi;
    else
        G := NullspaceMat(TransposedMat(H));
    fi;
    if Length(G) = 0 then  # Call NullCode. Length(H=I) = n-k, in this case.
                           # Length(G) = k = 0 => n = Length(H).
        C := NullCode(Length(H), F);
        C!.name := name;
        return C;
    fi;

    C := LinearCodeByGenerators(F,Codeword(G, F));
    SetGeneratorMat(C, G);
    SetCheckMat(C, H);
    SetWordLength(C, Length(G[1]));
    C!.name := name;
    return C;
end);

InstallOtherMethod(CheckMatCode, "check matrix, field", true,
    [IsMatrix, IsField], 0,
function(H, F)
    return CheckMatCode(H, "code defined by check matrix", F);
end);

InstallOtherMethod(CheckMatCode, "check matrix, name, size of field", true,
    [IsMatrix, IsString, IsInt], 0,
function(H, name, q)
    return CheckMatCode(H, name, GF(q));
end);

InstallOtherMethod(CheckMatCode, "check matrix, size of field", true,
    [IsMatrix, IsInt], 0,
function(H, q)
    return CheckMatCode(H, "code defined by check matrix", GF(q));
end);


#############################################################################
##
#F  RandomLinearCode( <n>, <k> [, <F>] )  . . . . . . . .  random linear code
##

InstallMethod(RandomLinearCode, "n,k,field", true, [IsInt, IsInt, IsField], 0,
function(n, k, F)
    if k = 0 then
        return NullCode( n, F );
    else
        return GeneratorMatCode(PermutedCols(List(IdentityMat(k,F), i ->
                   Concatenation(i,List([k+1..n],j->Random(F)))),
                   Random(SymmetricGroup(n))), "random linear code", F);
    fi;
end);

InstallOtherMethod(RandomLinearCode, "n,k,size of field", true,
    [IsInt, IsInt, IsInt], 0,
function(n, k, q)
    return RandomLinearCode(n, k, GF(q));
end);

InstallOtherMethod(RandomLinearCode, "n,k", true, [IsInt, IsInt], 0,
function(n, k)
    return RandomLinearCode(n, k, GF(2));
end);


#############################################################################
##
#F  HammingCode( <r> [, <F>] )  . . . . . . . . . . . . . . . .  Hamming code
##

InstallMethod(HammingCode, "r,F", true, [IsInt, IsField], 0,
function(r, F)
    local q, H, H2, C, i, j, n, TupAllow, wd;

    TupAllow := function(W)
        local l;
        l := 1;
        while (W[l] = Zero(F)) and l < Length(W) do
            l := l + 1;
        od;
        return (W[l] = One(F));
    end;

    q := Size(F);
    if not IsPrimePowerInt(q) then
        Error("q must be prime power");
    fi;
    H := Tuples(AsSSortedList(F), r);
    H2 := [];
    j := 1;
    for i in [1..Length(H)] do
        if TupAllow(H[i]) then
            H2[j] := H[i];
            j := j + 1;
        fi;
    od;
    n := (q^r-1)/(q-1);
    C := CheckMatCode(TransposedMat(H2), Concatenation("Hamming (", String(r),
                 ",", String(q), ") code"), F);
    C!.lowerBoundMinimumDistance := 3;
    C!.upperBoundMinimumDistance := 3;
    C!.boundsCoveringRadius := [ 1 ];
    SetIsPerfectCode(C, true);
    SetIsSelfDualCode(C, false);
    SetSpecialDecoder(C, HammingDecoder);
    if q = 2 then
        SetIsNormalCode(C, true);
        wd := [1, 0];
        for i in [2..n] do
            Add(wd, 1/i * (Binomial(n, i-1) - wd[i] - (n-i+2)*wd[i-1]));
        od;
        SetWeightDistribution(C, wd);
    fi;
    return C;
end);

InstallOtherMethod(HammingCode, "r,size of field", true, [IsInt, IsInt], 0,
function(r, q)
    return HammingCode(r, GF(q));
end);

InstallOtherMethod(HammingCode, "r", true, [IsInt], 0,
function(r)
    return HammingCode(r, GF(2));
end);


#############################################################################
##
#F  SimplexCode( <r>, <F> ) .  The SimplexCode is the Dual of the HammingCode
##

InstallMethod(SimplexCode, "redundancy, field", true, [IsInt, IsField], 0,
function(r, F)
    local C;
    C := DualCode( HammingCode(r,F) );
    C!.name := "simplex code";
    if F = GF(2) then
        SetIsNormalCode(C, true);
        C!.boundsCoveringRadius := [ 2^(r-1) - 1 ];
    fi;
    return C;
end);

InstallOtherMethod(SimplexCode, "redundancy, fieldsize", true,[IsInt,IsInt],0,
function(r, q)
    return SimplexCode(r, GF(q));
end);

InstallOtherMethod(SimplexCode, "redundancy", true, [IsInt], 0,
function(r)
    return SimplexCode(r, GF(2));
end);


#############################################################################
##
#F  ReedMullerCode( <r>, <k> )  . . . . . . . . . . . . . .  Reed-Muller code
##
##  ReedMullerCode(r, k) creates a binary Reed-Muller code of dimension k,
##  order r; 0 <= r <= k
##

InstallMethod(ReedMullerCode, "dimension, order", true, [IsInt,IsInt], 0,
function(r,k)
    local mat,c,src,dest,index,num,dim,C,wd, h,t,A, bcr;

    if r > k then
        return ReedMullerCode(k, r); #for compatibility with older versions
                                     #of guava, It used to be
                                     #ReedMullerCode(k, r);
    fi;
    mat := [ [] ];
    num := 2^k;
    dim := Sum(List([0..r], x->Binomial(k,x)));
    for t in [1..num] do
        mat[1][t] := Z(2)^0;
    od;
    if r > 0 then
        Append(mat, TransposedMat(Tuples ([0*Z(2), Z(2)^0], k)));
        for t in [2..r] do
            for index in Combinations([1..k], t) do
                dest := List([1..2^k], i->Product(index, j->mat[j+1][i]));
                Append(mat, [dest]);
            od;
        od;
    fi;
    C := GeneratorMatCode( mat, Concatenation("Reed-Muller (", String(r), ",",
            String(k), ") code"), GF(2) );
    C!.lowerBoundMinimumDistance := 2^(k-r);
    C!.upperBoundMinimumDistance := 2^(k-r);
    SetIsPerfectCode(C, false);
    SetIsSelfDualCode(C, (2*r = k-1));
    if r = 0 then
        wd := List([1..num + 1], x -> 0);
        wd[1] := 1;
        wd[num+1] := 1;
        SetWeightDistribution(C, wd);
    elif r = 1 then
        wd := List([1..num + 1], x -> 0);
        wd[1] := 1;
        wd[num + 1] := 1;
        wd[num / 2 + 1] := Size(C) - 2;
        SetWeightDistribution(C, wd);
    elif r = 2 then
        wd := List([1..num + 1], x -> 0);
        wd[1] := 1;
        wd[num + 1] := 1;
        for h in [1..QuoInt(k,2)] do
            A := 2^(h*(h+1));
            for t in [0..2*h-1] do
                A := A*(2^(k-t)-1);
            od;
            for t in [1..h] do
                A := A/(2^(2*t)-1);
            od;
            wd[2^(k-1)+2^(k-1-h)+1] := A;
            wd[2^(k-1)-2^(k-1-h)+1] := A;
        od;
        wd[2^(k-1)+1] := Size(C)-Sum(wd);
        SetWeightDistribution(C, wd);
    fi;

    bcr := BoundsCoveringRadius( C );

    if 0 <= r and r <= k-3 then
        if IsEvenInt( r ) then
            C!.boundsCoveringRadius :=
              [ Maximum( 2^(k-r-3)*(r+4), bcr[1] )
                .. Maximum( bcr ) ];
        else
            C!.boundsCoveringRadius :=
              [ Maximum( 2^(k-r-3)*(r+5), bcr[ 1 ] )
                .. Maximum( bcr ) ];
        fi;
    fi;

    if r = k then
        SetCoveringRadius(C, 0);
        C!.boundsCoveringRadius := [ 0 ];
    elif r = k - 1 then
        SetCoveringRadius(C, 1);
        C!.boundsCoveringRadius := [ 1 ];
    elif r = k - 2 then
        SetCoveringRadius(C, 2);
        C!.boundsCoveringRadius := [ 2 ];
    elif r = k - 3 then
        if IsEvenInt( k ) then
            SetCoveringRadius(C, k + 2 );
            C!.boundsCoveringRadius := [ k + 2 ];
        else
            SetCoveringRadius(C,  k + 1 );
            C!.boundsCoveringRadius := [ k + 1 ];
        fi;
    elif r = 0 then
        SetCoveringRadius(C,  2^(k-1) );
        C!.boundsCoveringRadius := [ 2^(k-1) ];
    elif r = 1 then
        if IsEvenInt( k ) then
            SetCoveringRadius(C,  2^(k-1) - 2^(k/2-1) );
            C!.boundsCoveringRadius := [ 2^(k-1) - 2^(k/2-1) ];
        elif k = 5 then
            SetCoveringRadius(C,  12 );
            C!.boundsCoveringRadius := [ 12 ];
        elif k = 7 then
            SetCoveringRadius(C,  56 );
            C!.boundsCoveringRadius := [ 56 ];
        elif k >= 15 then
            C!.boundsCoveringRadius := [ 2^(k-1) - 2^((k+1)/2)*27/64
                                        .. 2^(k-1) - 2^( QuoInt(k,2)-1 ) ];
        else
            C!.boundsCoveringRadius := [ 2^(k-1) - 2^((k+1)/2)/2
                                        .. 2^(k-1) - 2^( QuoInt(k,2)-1 ) ];
        fi;
    elif r = 2 then
        if k = 6 then
            SetCoveringRadius(C,  18 );
            C!.boundsCoveringRadius := [ 18 ];
        elif k = 7 then
            C!.boundsCoveringRadius := [ 40 .. 44 ];
        elif k = 8 then
            C!.boundsCoveringRadius := [ 84
              .. Maximum( bcr ) ];
        fi;
    elif r = 3 then
        if k = 7 then
            C!.boundsCoveringRadius := [ 20 .. 23 ];
        fi;
    elif r = 4 then
        if k = 8 then
            C!.boundsCoveringRadius := [ 22
              .. Maximum( bcr ) ];
        fi;
    fi;

    if r = 1 and
       ( IsEvenInt( k ) or k = 3 or k = 5 or k = 7 ) then
        SetIsNormalCode(C, true);
    fi;

    return C;
end);


#############################################################################
##
#F  LexiCode( <M | n>, <d>, <F> )  . . . . .  Greedy code with standard basis
##

InstallMethod(LexiCode, "basis,distance,field", true,
    [IsMatrix, IsInt, IsField], 0,
function(M, d, F)
    local base, n, k, one, zero, elms, Sz, vec, word, i, dist, carry, pos, C;
    base := VectorCodeword(Codeword(M, F));
    n := Length(base[1]);
    k := Length(base);
    one := One(F);
    zero := Zero(F);
    elms := [];
    Sz := 0;
    vec := NullVector(k,F);
    repeat
        word := vec * base;
        i := 1;
        dist := d;
        while (dist>=d) and (i <= Sz) do
            dist := DistanceVecFFE(word, elms[i]);
            i := i + 1;
            od;
            if dist >= d then
                Add(elms,ShallowCopy(word));
                Sz := Sz + 1;
            fi;
            # generate the (lexicographical) next word in F^k
            carry := true;
            pos := k;
            while carry and (pos > 0) do
            if vec[pos] = zero then
                carry := false;
                vec[pos] := one;
            else
                vec[pos] := PrimitiveRoot(F)^(LogFFE(vec[pos],PrimitiveRoot(F))+1);
                if vec[pos] = one then
                    vec[pos] := zero;
                else
                    carry := false;
                fi;
            fi;
            pos := pos - 1;
        od;
    until carry;
    if Size(F) = 2 then  # or even (2^(2^LogInt(LogInt(q,2),2)) = q) ?
        C := GeneratorMatCode(elms, "lexicode", F);
    else
        C := ElementsCode(elms, "lexicode", F);
    fi;
    C!.lowerBoundMinimumDistance := d;
    return C;
end);

InstallOtherMethod(LexiCode, "basis,distance,size of field", true,
    [IsMatrix, IsInt, IsInt], 0,
function(M, d, q)
    return LexiCode(M, d, GF(q));
end);

InstallOtherMethod(LexiCode, "wordlength,distance,field", true,
    [IsInt, IsInt, IsField], 0,
function(n, d, F)
    return LexiCode(IdentityMat(n,F), d, F);
end);

InstallOtherMethod(LexiCode, "wordlength,distance,size of field", true,
    [IsInt, IsInt, IsInt], 0,
function(n, d, q)
    return LexiCode(IdentityMat(n, GF(q)), d, GF(q));
end);


#############################################################################
##
#F  GreedyCode( <M>, <d> [, <F>] )  . . . . Greedy code from list of elements
##

InstallMethod(GreedyCode, "matrix,design distance,Field", true,
    [IsMatrix, IsInt, IsField], 0,
function(M,d,F)
    local space, n, word, elms, Sz, i, dist, C;
    space := VectorCodeword(Codeword(M,F));
    n := Length(space[1]);
    elms := [space[1]];
    Sz := 1;
    for word in space do
        i := 1;
        repeat
            dist := DistanceVecFFE(word, elms[i]);
            i := i + 1;
        until dist < d or i > Sz;
        if dist >= d then
            Add(elms, word);
            Sz := Sz + 1;
        fi;
    od;
    C := ElementsCode(elms, "Greedy code, user defined basis", F);
    C!.lowerBoundMinimumDistance := d;
    return C;
end);

InstallOtherMethod(GreedyCode, "matrix,design distance,size of field", true,
    [IsMatrix, IsInt, IsInt], 0,
function(M,d,q)
    return GreedyCode(M,d,GF(q));
end);

InstallOtherMethod(GreedyCode, "matrix,design distance", true,
    [IsMatrix,IsInt], 0,
function(M,d)
    return GreedyCode(M,d,DefaultField(Flat(M)));
end);


#############################################################################
##
#F  AlternantCode( <r>, <Y> [, <alpha>], <F> )  . . . . . . .  Alternant code
##

InstallMethod(AlternantCode, "redundancy, Y, alpha, field", true,
    [IsInt, IsList, IsList, IsField], 0,
function(r, Y, els, F)
    local C, n, q, i, temp;
    n := Length(Y);
    els := Set(VectorCodeword(Codeword(els, F)));
    Y := VectorCodeword(Codeword(Y, F) );

    if ForAny(Y, i-> i = Zero(F)) then
        Error("Y contains zero");
    elif Length(els) <> Length(Y) then
        Error("<Y> and <alpha> have inequal length or <alpha> is not distinct");
    fi;
    q := Characteristic(F);
    temp := NullMat(n, n, F);
    for i in [1..n] do
        temp[i][i] := Y[i];
    od;
    Y := temp;
    C := CheckMatCode( BaseMat(VerticalConversionFieldMat( List([0..r-1],
                 i -> List([1..n], j-> els[j]^i)) * Y)), "alternant code", F );
    C!.lowerBoundMinimumDistance := r + 1;
    return C;
end);

InstallOtherMethod(AlternantCode, "redundancy, Y, alpha, fieldsize", true,
    [IsInt, IsList, IsList, IsInt], 0,
function(r, Y, a, q)
    return AlternantCode(r, Y, a, GF(q));
end);

InstallOtherMethod(AlternantCode, "redundancy, Y, field", true,
    [IsInt, IsList, IsField], 0,
function(r, Y, F)
    return AlternantCode(r, Y, AsSSortedList(F){[2..Length(Y)+1]}, F);
end);

InstallOtherMethod(AlternantCode, "redundancy, Y, fieldsize", true,
    [IsInt, IsList, IsInt], 0,
function(r, Y, q)
    return AlternantCode(r, Y, AsSSortedList(GF(q)){[2..Length(Y)+1]}, GF(q));
end);


#############################################################################
##
#F  GoppaCode( <G>, <L | n> ) . . . . . . . . . . . . . . classical Goppa code
##

InstallGlobalFunction(GoppaCode,
function(arg)
    local C, GP, F, L, n, q, m, r, zero, temp;

    GP := PolyCodeword(Codeword(arg[1]));
    F := CoefficientsRing(DefaultRing(GP));
    q := Characteristic(F);
    m := Dimension(F);
    F := GF(q);
    zero := Zero(F);
    r := DegreeOfLaurentPolynomial(GP);

    # find m
    if IsInt(arg[2]) then
        n := arg[2];
        m := Maximum(m, LogInt(n,q));
        repeat
            L := Filtered(AsSSortedList(GF(q^m)),i -> Value(GP,i) <> zero);
            m := m + 1;
        until Length(L) >= n;
        m := m - 1;
        L := L{[1..n]};
    else
        L := arg[2];
        n := Length(L);
        m := Maximum(m, Dimension(DefaultField(L)));
    fi;
    C := CheckMatCode( BaseMat(VerticalConversionFieldMat( List([0..r-1],
                 i-> List(L, j-> (j)^i / Value(GP, j) )) )), "classical Goppa code", F);

    # Make the code
    temp := Factors(GP);
    if (q = 2) and (Length(temp) = Length(Set(temp))) then
    # second condition checks if the roots of G are distinct
        C!.lowerBoundMinimumDistance := Minimum(n, 2*r + 1);
    else
        C!.lowerBoundMinimumDistance := Minimum(n, r + 1);
    fi;
    return C;
end);


#############################################################################
##
#F  CordaroWagnerCode( <n> )  . . . . . . . . . . . . . . Cordaro-Wagner code
##

InstallMethod(CordaroWagnerCode, "length", true, [IsInt], 0,
function(n)
    local r, C, zero, one, F, d, wd;
    if n < 2 then
        Error("n must be 2 or more");
    fi;
    r := Int((n+1)/3);
    d := (2 * r - Int( (n mod 3) / 2) );
    F := GF(2);
    zero := Zero(F);
    one := One(F);
    C := GeneratorMatCode( [Concatenation(List([1..r],i -> zero),
                     List([r+1..n],i -> one)),
                     Concatenation(List([r+1..n],i -> one), List([1..r],
                             i -> zero))], "Cordaro-Wagner code", F );
    C!.lowerBoundMinimumDistance := d;
    C!.upperBoundMinimumDistance := d;
    wd := List([1..n+1], i-> 0);
    wd[1] := 1;
    wd[2*r+1] := 1;
    wd[n-r+1] := wd[n-r+1] + 2;
    SetWeightDistribution(C, wd);
    return C;
end);


#############################################################################
##
#F  GeneralizedSrivastavaCode( <a>, <w>, <z> [, <t>] [, <F>] )  . . . . . .
##

InstallMethod(GeneralizedSrivastavaCode, "a,w,z,t,F", true,
    [IsList, IsList, IsList, IsInt, IsField], 0,
function(a,w,z,t,F)
    local C, n, s, i, H;
    a := VectorCodeword(Codeword(a, F));
    w := VectorCodeword(Codeword(w, F));
    z := VectorCodeword(Codeword(z, F));
    n := Length(a);
    s := Length(w);
    if Length(Set(Concatenation(a,w))) <> n + s then
        Error("<alpha> and w are not distinct");
    fi;
    if ForAny(z,i -> i = Zero(F)) then
        Error("<z> must be nonzero");
    fi;

    H := [];
    for i in List([1..s], index -> List([1..t], vert -> List([1..n],
            hor -> z[hor]/(a[hor] - w[index])^vert))) do
        Append(H, i);
    od;
    C := CheckMatCode( BaseMat(VerticalConversionFieldMat(H)),
                 "generalized Srivastava code", GF(Characteristic(F)) );
    C!.lowerBoundMinimumDistance := s + 1;
    return C;
end);

InstallOtherMethod(GeneralizedSrivastavaCode, "a,w,z,t,q", true,
    [IsList, IsList, IsList, IsInt, IsInt], 0,
function(a, w, z, t, q)
    return GeneralizedSrivastavaCode(a, w, z, t, GF(q));
end);

InstallOtherMethod(GeneralizedSrivastavaCode, "a,w,z,t", true,
    [IsList, IsList, IsList, IsInt], 0,
function(a, w, z, t)
    return GeneralizedSrivastavaCode(a, w, z, t,
                DefaultField(Concatenation(a,w,z)));
end);

InstallOtherMethod(GeneralizedSrivastavaCode, "a,w,z,F", true,
    [IsList, IsList, IsList, IsField], 0,
function(a, w, z, F)
    return GeneralizedSrivastavaCode(a, w, z, 1, F);
end);

InstallOtherMethod(GeneralizedSrivastavaCode, "a, w, z", true,
    [IsList, IsList, IsList], 0,
function(a, w, z)
    return GeneralizedSrivastavaCode(a, w, z, 1,
                DefaultField(Concatenation(a, w, z)));
end);


#############################################################################
##
#F  SrivastavaCode( <a>, <w> [, <mu>] [, <F>] ) . . . . . . . Srivastava code
##

InstallMethod(SrivastavaCode, "a,w,mu,F", true,
    [IsList,IsList,IsInt, IsField], 0,
function(a, w, mu, F)
    local C, n, s, i, zero, TheMat;
    a := VectorCodeword(Codeword(a, F));
    w := VectorCodeword(Codeword(w, F));
    n := Length(a);
    s := Length(w);
    if Length(Set(Concatenation(a,w))) <> n + s then
        Error("the elements of <alpha> and w are not distinct");
    fi;
    zero := Zero(F);
    for i in [1.. n] do
        if a[i]^mu = zero then
            Error("z[",i,"] = ",a[i],"^",mu," = ",zero);
        fi;
    od;
    TheMat := List([1..s], j -> List([1..n], i -> a[i]^mu/(a[i] - w[j]) ));
    C := CheckMatCode( BaseMat(VerticalConversionFieldMat(TheMat)),
                 "Srivastava code", GF(Characteristic(F)) );
    C!.lowerBoundMinimumDistance := s + 1;
    return C;
end);

InstallOtherMethod(SrivastavaCode, "a,w,mu,q", true,
    [IsList,IsList,IsInt,IsInt], 0,
function(a, w, mu, q)
    return SrivastavaCode(a, w, mu, GF(q));
end);

InstallOtherMethod(SrivastavaCode, "a,w,mu", true,
    [IsList,IsList,IsInt], 0,
function(a, w, mu)
    return SrivastavaCode(a, w, mu, DefaultField(Concatenation(a,w)));
end);

InstallOtherMethod(SrivastavaCode, "a,w,F", true,
    [IsList,IsList,IsField], 0,
function(a, w, F)
    return SrivastavaCode(a, w, 1, F);
end);

InstallOtherMethod(SrivastavaCode, "a,w", true, [IsList,IsList], 0,
function(a, w)
    return SrivastavaCode(a, w, 1, DefaultField(Concatenation(a,w)));
end);


#############################################################################
##
#F  ExtendedBinaryGolayCode( )  . . . . . . . . .  extended binary Golay code
##
InstallMethod(ExtendedBinaryGolayCode, "only method", true, [], 0,
function()
    local C;
    C := ExtendedCode(BinaryGolayCode());
    C!.name := "extended binary Golay code";
    Unbind( C!.history );
    SetIsCyclicCode(C, false);
    SetIsPerfectCode(C, false);
    SetIsSelfDualCode(C, true);
    C!.boundsCoveringRadius := [ 4 ];
    SetIsNormalCode(C, true);
    SetWeightDistribution(C,
      [1,0,0,0,0,0,0,0,759,0,0,0,2576,0,0,0,759,0,0,0,0,0,0,0,1]);
    #SetAutomorphismGroup(C, M24);
    C!.lowerBoundMinimumDistance := 8;
    C!.upperBoundMinimumDistance := 8;
    return C;
end);


#############################################################################
##
#F  ExtendedTernaryGolayCode( ) . . . . . . . . . extended ternary Golay code
##
InstallMethod(ExtendedTernaryGolayCode, "only method", true, [], 0,
function()
    local C;
    C := ExtendedCode(TernaryGolayCode());
    SetIsCyclicCode(C, false);
    SetIsPerfectCode(C, false);
    SetIsSelfDualCode(C, true);
    C!.boundsCoveringRadius := [ 3 ];
    SetIsNormalCode(C, true);
    C!.name := "extended ternary Golay code";
    Unbind( C!.history );
    SetWeightDistribution(C, [1,0,0,0,0,0,264,0,0,440,0,0,24]);
    #SetAutomorphismGroup(C, M12);
    C!.lowerBoundMinimumDistance := 6;
    C!.upperBoundMinimumDistance := 6;
    return C;
end);


#############################################################################
##
#F  BestKnownLinearCode( <n>, <k> [, <F>] ) .  returns best known linear code
#F  BestKnownLinearCode( <rec> )
##
##  L describs how to create a code. L is a list with two elements:
##  L[1] is a function and L[2] is a list of arguments for L[1].
##  One or more of the arguments of L[2] may again be such descriptions and
##  L[2] can be an empty list.
##  The field .construction contains such a list or false if the code is not
##  yet in the apropiatelibrary file (/tbl/codeq.g)
##

InstallMethod(BestKnownLinearCode, "method for bounds/construction record",
    true, [IsRecord], 0,
function(bds)
    local MakeCode, C;

    # L describs how to create a code. L is a list with two elements:
    # L[1] is a function and L[2] is a list of arguments for L[1].
    # One or more of the arguments of L[2] may again be such descriptions and
    # L[2] can be an empty list.
    MakeCode := function(L)
        #beware: this is the most beautiful function in GUAVA (according to J)
        if IsList(L) and IsBound(L[1]) and IsFunction(L[1]) then
            return CallFuncList( L[1], List( L[2], i -> MakeCode(i) ) );
        else
            return L;
        fi;
    end;

    if not IsBound(bds.construction) then
        bds := BoundsMinimumDistance(bds.n, bds.k, bds.q);
    fi;
    if bds.construction = false then
        Print("Code not yet in library\n");
        return fail;
    else
        C := MakeCode(bds.construction);
        if LowerBoundMinimumDistance(C) > bds.lowerBound then
            Print("New table entry found!\n");
        fi;
        C!.lowerBoundMinimumDistance := Maximum(bds.lowerBound,
                                               LowerBoundMinimumDistance(C));
        C!.upperBoundMinimumDistance := Minimum(bds.upperBound,
                                               UpperBoundMinimumDistance(C));
        return C;
    fi;
end);

InstallOtherMethod(BestKnownLinearCode, "n, k, q", true,
    [IsInt, IsInt, IsInt], 0,
function(n, k, q)
    local r;
    r := BoundsMinimumDistance(n, k, q);
    return BestKnownLinearCode(r);
end);

InstallOtherMethod(BestKnownLinearCode, "n, k, F", true,
    [IsInt, IsInt, IsField], 0,
function(n, k, F)
    local r;
    r := BoundsMinimumDistance(n, k, Size(F));
    return BestKnownLinearCode(r);
end);

InstallOtherMethod(BestKnownLinearCode, "n, k", true,
    [IsInt, IsInt], 0,
function(n, k)
    local r;
    r := BoundsMinimumDistance(n, k);
    return BestKnownLinearCode(r);
end);



## Helper functions for cyclic code creation
GeneratorMatrixFromPoly := function(p,n)
    local coeffs, j, res, r, zero;
    coeffs := CoefficientsOfLaurentPolynomial(p);
    coeffs := ShiftedCoeffs(coeffs[1], coeffs[2]);
    r := DegreeOfLaurentPolynomial(p);
    zero := Zero(Field(coeffs));
    res := [];
    res[1] := [];
    # first row
    Append(res[1], coeffs);
    Append(res[1], List([r+2..n], i->zero));
    # 2..last-1
    if n-r > 2 then
        for j in [2..(n-r-1)] do
            res[j] := [];
            Append(res[j], List([1..j-1], i->zero));
            Append(res[j], coeffs);
            Append(res[j], List([r+1+j..n], i->zero));
        od;
    fi;
    # last row
    if n-r > 1 then
        res[n-r] := [];
        Append(res[n-r], List([1..n-r-1], i->zero));
        Append(res[n-r], coeffs);
    fi;
    return res;
end;


CyclicCodeByGenerator := function(F, n, G)
    local C, GM;
    ## for now, using linear code representation.
    ## Get generator matrix and call linear code creation function
    ## Note input is a codeword, for consistency.
    ## Further note GenMatFromPoly doesn't handle NullPoly case well,
    ## so calling NullMat instead.  Once using poly rep, this should be
    ## unnecessary.
    ## And GMFP doesn't handle p = x^n-1 case.

    if (G = NullWord(n,F)) or
       (VectorCodeword(G) = []) or
       (G = Codeword(Indeterminate(F)^n-One(F), F)) then
        GM := NullMat(1,n,F);
    else
        GM := GeneratorMatrixFromPoly(PolyCodeword(G), n);
    fi;
    C := LinearCodeByGenerators(F, Codeword(One(F)*GM, F));
    #C := LinearCodeByGenerators(F, One(F)*GM);
    SetGeneratorMat(C, GM);
    SetIsCyclicCode(C, true);
        SetSpecialDecoder(C, CyclicDecoder);
    return C;
end;


#############################################################################
##
#F  GeneratorPolCode( <G>, <n> [, <name> ], <F> ) .  code from generator poly
##

InstallMethod(GeneratorPolCode, "Poly, wordlength,name,field", true,
    [IsUnivariatePolynomial, IsInt, IsString, IsField], 0,
function(G, n, name, F)
    local R;
    #G := PolyCodeword( Codeword(G, F) );
    if not IsZero(G) then
        G := Gcd(G,(Indeterminate(F)^n-One(F)));
    fi;
    R := CyclicCodeByGenerator(F, n, Codeword(G, F));
    SetGeneratorPol(R, G);
    R!.name := name;
    return R;
end);

InstallOtherMethod(GeneratorPolCode, "Poly,wordlength,field", true,
    [IsUnivariatePolynomial, IsInt, IsField], 0,
function(G, n, F)
    return GeneratorPolCode(G,n,"code defined by generator polynomial", F);
end);

InstallOtherMethod(GeneratorPolCode, "Poly,wordlength,name,fieldsize", true,
    [IsUnivariatePolynomial, IsInt, IsString, IsInt], 0,
function(G, n, name, q)
    return GeneratorPolCode(G, n, name, GF(q));
end);

InstallOtherMethod(GeneratorPolCode, "Poly, wordlength, fieldsize", true,
    [IsUnivariatePolynomial, IsInt, IsInt], 0,
function(G, n, q)
    return GeneratorPolCode(G, n, "code defined by generator polynomial",
                            GF(q));
end);


#############################################################################
##
#F  CheckPolCode( <H>, <n> [, <name> ], <F> ) . .  code from check polynomial
##

InstallMethod(CheckPolCode, "check poly, wordlength, name, field", true,
    [IsUnivariatePolynomial, IsInt, IsString, IsField], 0,
function(H, n, name, F)
    local R,G;
    H := PolyCodeword( Codeword(H, F) );
    H := Gcd(H, (Indeterminate(F)^n-One(F)));
    # Get generator pol
    G := EuclideanQuotient((Indeterminate(F)^n-One(F)), H);

    R := CyclicCodeByGenerator(F, n, Codeword(G,F));
    SetCheckPol(R, H);
    SetGeneratorPol(R, G);
    R!.name := name;
    return R;
end);

InstallOtherMethod(CheckPolCode, "check poly, wordlength, field", true,
    [IsUnivariatePolynomial, IsInt, IsField], 0,
function(H, n, F)
    return CheckPolCode(H, n, "code defined by check polynomial", F);
end);

InstallOtherMethod(CheckPolCode, "check poly, wordlength, name, fieldsize",
    true, [IsUnivariatePolynomial, IsInt, IsString, IsInt], 0,
function(H, n, name, q)
    return CheckPolCode(H, n, name, GF(q));
end);

InstallOtherMethod(CheckPolCode, "check poly, wordlength, fieldsize", true,
    [IsUnivariatePolynomial, IsInt, IsInt], 0,
function(H, n, q)
    return CheckPolCode(H, n, "code defined by check polynomial", GF(q));
end);


#############################################################################
##
#F  RepetitionCode( <n> [, <F>] ) . . . . . . . repetition code of length <n>
##

InstallMethod( RepetitionCode, "wordlength, Field", true, [IsInt, IsField], 0,
function(n, F)
    local C, q, wd, p;
    q :=Size(F);
    p := LaurentPolynomialByCoefficients( ElementsFamily(FamilyObj(F)),
                    List([1..n], t->One(F)), 0);
    C := GeneratorPolCode(p, n, "repetition code", F);
    C!.lowerBoundMinimumDistance := n;
    C!.upperBoundMinimumDistance := n;
    if n = 2 and q = 2 then
        SetIsSelfDualCode(C, true);
    else
        SetIsSelfDualCode(C, false);
    fi;
    wd := NullVector(n+1);
    wd[1] := 1;
    wd[n+1] := q-1;
    SetWeightDistribution(C, wd);
    if n < 260 then
        SetAutomorphismGroup(C, SymmetricGroup(n));
    fi;
    if F = GF(2) then
        SetIsNormalCode(C, true);
    fi;
    if (n mod 2 = 0) or (F <> GF(2)) then
        SetIsPerfectCode(C, false);
        C!.boundsCoveringRadius := [ Minimum(n-1,QuoInt((q-1)*n,q)) ];
    else
        C!.boundsCoveringRadius := [ QuoInt(n,2) ];
        SetIsPerfectCode(C, true);
    fi;
    return C;
end);

InstallOtherMethod(RepetitionCode, "wordlength, fieldsize", true,
    [IsInt, IsInt], 0,
function(n, q)
    return RepetitionCode(n, GF(q));
end);

InstallOtherMethod(RepetitionCode, "wordlength", true, [IsInt], 0,
function(n)
    return RepetitionCode(n, GF(2));
end);


#############################################################################
##
#F  WholeSpaceCode( <n> [, <F>] ) . . . . . . . . . . returns <F>^<n> as code
##

InstallMethod(WholeSpaceCode, "wordlength, Field", true, [IsInt, IsField], 0,
function(n, F)
    local C, index, q;
    C := GeneratorPolCode( Indeterminate(F)^0, n, "whole space code", F);
    C!.lowerBoundMinimumDistance := 1;
    C!.upperBoundMinimumDistance := 1;
    SetAutomorphismGroup(C, SymmetricGroup(n));
    C!.boundsCoveringRadius := [ 0 ];
    if F = GF(2) then
        SetIsNormalCode(C, true);
    fi;
    SetIsPerfectCode(C, true);
    SetIsSelfDualCode(C, false);
    q := Size(F) - 1;
    SetWeightDistribution(C, List([0..n], i-> q^i*Binomial(n, i)) );
    return C;
end);

InstallOtherMethod(WholeSpaceCode, "wordlength, fieldsize", true,
    [IsInt, IsInt], 0,
function(n, q)
    return WholeSpaceCode(n, GF(q));
end);

InstallOtherMethod(WholeSpaceCode, "wordlength", true, [IsInt], 0,
function(n)
    return WholeSpaceCode(n, GF(2));
end);


#############################################################################
##
#F  CyclicCodes( <n> )  . .  returns a list of all cyclic codes of length <n>
##

InstallMethod(CyclicCodes, "wordlength, Field", true,
    [IsInt, IsField], 0,
function(n, F)
    local f, Pl;
    f := Factors(Indeterminate(F) ^ n - One(F));
    Pl := List(Combinations(f), c->Product(c)*Indeterminate(F)^0);
    return List(Pl, p->GeneratorPolCode(p, n, "enumerated code", F));
end);

InstallOtherMethod(CyclicCodes, "wordlength, k, Field", true,
    [IsInt, IsInt, IsField], 0,
function(n, k, F)
    local r, f, Pl, codes;
    r := n - k;
    f := Factors(Indeterminate(F)^n-One(F));
    Pl := [];

    codes := function(f, g)
       local i, tempf;
       if Degree(g) < r then
           i := 1;
           while i <= Length(f) and Degree(g)+Degree(f[i][1]) <= r do
               if f[i][2] = 1 then
                   tempf := f{[ i+1 .. Length(f) ]};
               else
                   tempf := ShallowCopy( f );
                   tempf[i][2] := f[i][2] - 1;
               fi;
               codes( tempf, g * f[i][1] );
               i := i + 1;
           od;
       elif Degree(g) = r then
           Add( Pl, g );
       fi;
    end;

    codes( Collected( f ), Indeterminate(F)^0 );
    return List(Pl, p->GeneratorPolCode(p,n,"enumerated code",F));
end);

InstallOtherMethod(CyclicCodes, "wordlength, fieldsize", true,
    [IsInt, IsInt], 0,
function(n, q)
    return CyclicCodes(n, GF(q));
end);

InstallOtherMethod(CyclicCodes, "wordlength, k, fieldsize", true,
    [IsInt, IsInt, IsInt], 0,
function(n, k, q)
    return CyclicCodes(n, k, GF(q));
end);


#############################################################################
##
#F  NrCyclicCodes( <n>, <F>)  . . .  number of cyclic codes of length <n>
##

InstallMethod(NrCyclicCodes, "wordlength, Field", true, [IsInt, IsField], 0,
function(n, F)
    return NrCombinations(Factors(Indeterminate(F)^n-One(F)));
end);

InstallOtherMethod(NrCyclicCodes, "wordlength, fieldsize", true,
    [IsInt, IsInt], 0,
function(n, q)
    return NrCyclicCodes(n, GF(q));
end);


#############################################################################
##
#F  BCHCode( <n> [, <b>], <delta> [, <F>] ) . . . . . . . . . . . .  BCH code
##
##  BCHCode (n [, b ], delta [, F]) returns the BCH code over F with
##  wordlength n, designedDistance delta, constructed from powers
##  x^b, x^(b+1), ..., x^(b+delta-2), where x is a primitive n'th power root
##  of unity; b = 1 by default; the function returns a narrow sense BCH code
##  Gcd(n,q) = 1 and 2<=delta<=n-b+1

InstallMethod(BCHCode, "wordlength, start, designed distance, fieldsize", true,
    [IsInt, IsInt, IsInt, IsInt], 0,
function(n, start, del, q)
    local stop, m, b, C, test, Cyclo, PowerSet, t,
          zero, desdist, G, superfl, i, BCHTable;

    BCHTable := [ [31,11,11], [63,36,11], [63,30,13], [127,92,11],
                  [127,85,13], [255,223,9], [255,215,11], [255,207,13],
                  [255,187,19], [255,171,23], [255,155,27], [255,99,47],
                  [255,79,55], [255,29,95], [255,21,111] ];
########### increase size of table? - wdj
    stop := start + del - 2;
    if Gcd(n,q) <> 1 then
        Error ("n and q must be relative primes");
    fi;
    zero := Zero(GF(q));
    m := OrderMod(q,n);
    b := PrimitiveUnityRoot(q,n);
    PowerSet := [start..stop];
    G := Indeterminate(GF(q))^0;
    while Length(PowerSet) > 0 do
        test := PowerSet[1] mod n; ############### changed 8-1-2004
        G := G * MinimalPolynomial(GF(q), b^test);
        t := (q*test) mod n;
        while t <> (test mod n) do ############### changed 7-31-2004
            RemoveSet(PowerSet, t);
            t := (q*t) mod n;
        od;
        RemoveSet(PowerSet, test);
    od;
######################################
###### This loop computes the product of the
###### min polys of the elements when it should only
###### compute the lcm of them
###### Why not use cyclotomic codests and roots of code?
######################################
    C := GeneratorPolCode(G, n, GF(q));
########### this removes extra powers by taking the gcd with x^n-1
    SetSpecialDecoder(C, BCHDecoder);
########### this overwrites     SetSpecialDecoder(C, CyclicDecoder);
    # Calculate Bose distance:
    Cyclo := CyclotomicCosets(q,n);
######## why not do this in the above loop?
    PowerSet := [];
    for t in [start..stop] do
        for test in [1..Length(Cyclo)] do
            if (t mod n) in Cyclo[test] then ##### added 8-1-2004
                AddSet(PowerSet, Cyclo[test]);
            fi;
        od;
    od;
    PowerSet := Flat(PowerSet);
    while stop + 1 in PowerSet do
        stop := stop + 1;
    od;
    while start - 1 in PowerSet do
        start := start - 1;
    od;
    desdist := stop - start + 2;
    if desdist > n then
        Error("invalid designed distance");
    fi;
    # In some cases the true minimumdistance is known:
    SetDesignedDistance(C, desdist);
    C!.lowerBoundMinimumDistance := desdist;
    if (q=2) and (n mod desdist = 0) and (start = 1) then
        C!.upperBoundMinimumDistance := desdist;
    elif q=2 and desdist mod 2 = 0 and (n=2^m - 1) and (start=1) and
      (Sum(List([0..QuoInt(desdist-1, 2) + 1], i -> Binomial(n, i))) >
       (n + 1) ^ QuoInt(desdist-1, 2)) then
        C!.upperBoundMinimumDistance := desdist;
    elif (n = q^m - 1) and (desdist = q^OrderMod(q,desdist) - 1)
      and (start=1) then
        C!.upperBoundMinimumDistance := desdist;
    fi;
    # Look up this code in the table
########## table only for q=2^r, add this to if statement
########## to speed this up ?? - wdj
    if start=1 then
        for i in BCHTable do
            if i[1] = n and i[2] = Dimension(C) then
                C!.lowerBoundMinimumDistance := i[3];
                C!.upperBoundMinimumDistance := i[3];
            fi;
        od;
    fi;
    # Calculate minimum of q*desdist - 1 for primitive n.s. BCH code
    if q^m - 1 = n and start = 1 then
        PowerSet := [start..stop];
        superfl := true;
        i := PowerSet[Length(PowerSet)] * q mod n;
        while superfl do
            while i <> PowerSet[Length(PowerSet)] and not i in PowerSet do
                i := i * q mod n;
            od;
            if i = PowerSet[Length(PowerSet)] then
                superfl := false;
            else
                PowerSet := PowerSet{[1..Length(PowerSet)-1]};
                i := PowerSet[Length(PowerSet)] * q mod n;
            fi;
        od;
        C!.upperBoundMinimumDistance := Minimum(UpperBoundMinimumDistance(C),
                        q * (Length(PowerSet) + 1) - 1);
    fi;
    C!.name := Concatenation("BCH code, delta=",
                      String(desdist), ", b=", String(start));
    return C;
end);

InstallOtherMethod(BCHCode, "wordlength, start, designed distance, Field",
    true, [IsInt, IsInt, IsInt, IsField], 0,
function(n, b, del, F)
    return BCHCode(n, b, del, Size(F));
end);

InstallOtherMethod(BCHCode, "wordlength, designed distance", true,
    [IsInt, IsInt], 0,
function(n, del)
    return BCHCode(n, 1, del, 2);
end);

InstallOtherMethod(BCHCode, "wordlength, start, designed distance", true,
    [IsInt, IsInt, IsInt], 0,
function(n, b, del)
    return BCHCode(n, b, del, 2);
end);

InstallOtherMethod(BCHCode, "wordlength, designed distance, field", true,
    [IsInt, IsInt, IsField], 0,
function(n, del, F)
    return BCHCode(n, 1, del, Size(F));
end);


#############################################################################
##
#F  ReedSolomonCode( <n>, <d> ) . . . . . . . . . . . . . . Reed-Solomon code
##
##  ReedSolomonCode (n, d) returns a primitive narrow sense BCH code with
##  wordlength n, over alphabet q = n+1, designed distance d

InstallMethod(ReedSolomonCode, "wordlength, designed distance", true,
    [IsInt, IsInt], 0,
function(n, d)
    local C,b,q,wd,w;
    q := n+1;
    if not IsPrimePowerInt(q) then
        Error("q = n+1 must be a prime power");
    fi;
    b := Z(q);

    C := GeneratorPolCode(Product([1..d-1], i-> (Indeterminate(GF(q))-b^i)), n,
                 "Reed-Solomon code", GF(q) );
    SetRootsOfCode(C, List([1..d-1], i->b^i));
    C!.lowerBoundMinimumDistance := d;
    C!.upperBoundMinimumDistance := d;
    SetDesignedDistance(C, d);
    SetSpecialDecoder(C, BCHDecoder);
    IsMDSCode(C);       # Calculate weightDistribution field
    return C;
end);

InstallMethod(ExtendedReedSolomonCode, "wordlength, designed distance", true,
    [IsInt, IsInt], 0,
function(n, d)
    local i, j, s, C, G, Ce;
    C := ReedSolomonCode(n-1, d-1);
    G := MutableCopyMat( GeneratorMat(C) );
    TriangulizeMat(G);
    for i in [1..Size(G)] do;
        s := 0;
        for j in [1..Size(G[i])] do;
            s := s + G[i][j];
        od;
        Append(G[i], [-s]);
    od;
    Ce := GeneratorMatCodeNC(G, LeftActingDomain(C));
    Ce!.name := "extended Reed Solomon code";
    Ce!.lowerBoundMinimumDistance := d;
    Ce!.upperBoundMinimumDistance := d;
    IsMDSCode(Ce);
    return Ce;
end);

## RootsCode implementation expunged and rewritten for Guava 3.11
## J. E. Fields 1/15/2012 (with help from WDJ)
#############################################################################
##
#F  RootsCode( <n>, <list>, <field> ) code constructed from roots of polynomial
##
##  RootsCode (n, rootlist, F) or RootsCode (n, <powerlist>, fieldsize) or
##  RootsCode(n, rootlist) returns the
##  code with generator polynomial equal to the least common multiple of
##  the minimal polynomials of the n'th roots of unity in the list.
##  The code has wordlength n.
##

InstallMethod(RootsCode, "method for n, rootlist, field", true, [IsInt, IsList, IsField], 0,
function(n, L, F)
    local g, C, num, power, p, q, z, i, j, rootslist, powerlist, max, cc, CC, CCz;
    L := Set(L);
    q := Size(Field(L));
    z := Z(q);
    g:=One(F);
    if List(L, i->i^n) <> NullVector(Length(L), F) + z^0 then
       Error("powers must all be n'th roots of unity");
    fi;
    p := Characteristic(Field(L));
    CC:=CyclotomicCosets(p,q-1);
    CCz:=List([1..Length(CC)],i->List(CC[i],j->z^j));
    ##  this is the set of cyclotomic cosets, represented
    ##  as powers of a primitive element z
    powerlist := [];
    for i in [1..Length(L)] do
     for cc in CCz do
       if L[i] in cc then
            Append(powerlist,[cc]);
       fi;
     od;
    od;
    ########### add a cyclotomic coset into powerlist
    ########### if there is an element of L in that coset
    g:=Product([1..Length(powerlist)],i->MinimalPolynomial(F,powerlist[i][1]));
    C:=GeneratorPolCode(g,n,"code defined by roots",F);

    rootslist := [];
    for cc in powerlist do
        Append(rootslist, cc);
    od;
    rootslist := Set(rootslist);
    SetRootsOfCode(C, rootslist);

    # Find the largest number of successive powers for BCH bound
    max := 1;
    i := 1;
    num := Length(powerlist);
    for z in [2..num] do
        if powerlist[z] <> powerlist[i] + z-i then
            max := Maximum(max, z - i);
            i := z;
        fi;
    od;
    C!.lowerBoundMinimumDistance := Maximum(max, num+1 - i) + 1;
return C;
end);


InstallOtherMethod(RootsCode, "method for n, rootlist", true, [IsInt, IsList], 0,
function(n, L)
local p,q,z,L1,L2,F;
      L1 := Set(L);
      p := Characteristic(Field(L1));
      z := Z(Size(Field(L1)));
      F := GF(p);
      #L2 := List([1..Length(L1)],i-> LogFFE(L[i],z));
      #Print(L1, p, z, F, L2);
      return RootsCode(n, L1, F);
end);

InstallOtherMethod(RootsCode, "method for n, powerlist, fieldsize", true, [IsInt, IsList, IsInt], 0,
function(n, P, q)
# , "method for n, powerlist, fieldsize", true,  [IsInt, IsList, IsInt], 0,
local z, L;
        z := PrimitiveUnityRoot(q,n);
        L := Set(List(P, i->z^i));
        return RootsCode(n, L, GF(q));
end);

#############################################################################
##
#F  QRCode( <n> [, <F>] ) . . . . . . . . . . . . . .  quadratic residue code
##

InstallMethod(QRCode, "modulus, fieldsize", true, [IsInt, IsInt], 0,
function(n, q)
    local m, b, Q, N, t, g, lower, upper, C, F, coeffs;
    if Jacobi(q,n) <> 1 then
        Error("q must be a quadratic residue modulo n");
    elif not IsPrimeInt(n) then
        Error("n must be a prime");
    elif not IsPrimeInt(q) then
        Error("q must be a prime");
    fi;
    m := OrderMod(q,n);
    F := GF(q^m);
    b := PrimitiveUnityRoot(q,n);
    Q := [];
    N := [1..n];
    for t in [1..n-1] do
        AddSet(Q, t^2 mod n);
    od;
    for t in Q do
        RemoveSet(N, t);
    od;
    g := Product(Q,
      i -> LaurentPolynomialByCoefficients(ElementsFamily(FamilyObj(F)),
                            [-b^i, b^0], 0)  );
    coeffs := CoefficientsOfLaurentPolynomial(g);
    coeffs := ShiftedCoeffs(coeffs[1], coeffs[2]);
    C := GeneratorPolCode( LaurentPolynomialByCoefficients(
                    ElementsFamily(FamilyObj(GF(q))), coeffs, 0),
                n, "quadratic residue code", GF(q) );
    if RootInt(n)^2 = n then
        lower := RootInt(n);
    else
        lower := RootInt(n)+1;
    fi;
    if n mod 4 = 3 then
        while lower^2-lower+1 < n do
            lower := lower + 1;
        od;
    fi;
    if (n mod 8 = 7) and (q = 2) then
        while lower mod 4 <> 3 do
            lower := lower + 1;
        od;
    fi;
    upper := Weight(Codeword(coeffs));
    C!.lowerBoundMinimumDistance := lower;
    C!.upperBoundMinimumDistance := upper;
    return C;
end);

InstallOtherMethod(QRCode, "modulus, field", true, [IsInt, IsField], 0,
function(n, F)
    return QRCode(n, Size(F));
end);

InstallOtherMethod(QRCode, "modulus", true, [IsInt], 0,
function(n)
    return QRCode(n, 2);
end);

#############################################################################
##
#F  QQRCode( <n> [, <F>] ) . . . . . . . . binary quasi-quadratic residue code
##
## Code of Bazzi-Mittel (see Bazzi, L. and Mitter, S.K. "Some constructions of
##  codes from group actions" preprint March 2003 (submitted to IEEE IT)
##

InstallMethod(QQRCode, "Modulus", true, [IsInt], 0,
function(p)
local G0,G,Q,N,QN,i,C,F,QuadraticResidueSupports,NonQuadraticResidueSupports;

# start local functions:
QuadraticResidueSupports:=function(p)
 local L,i;
 L:=List([1..(p-1)],i->1+Legendre(i,p))/2;
 return L;
 end;
 NonQuadraticResidueSupports:=function(p)
 local L,i;
 L:=List([1..(p-1)],i->1-Legendre(i,p))/2;
 return L;
 end;
# end local functions

 F:=GF(2);
 Q:=[Zero(F)];
 Q:=One(F)*Concatenation(Q,QuadraticResidueSupports(p));
 N:=[Zero(F)];
 N:=One(F)*Concatenation(N,NonQuadraticResidueSupports(p));
 QN:=Concatenation(Q,N);
 G:=BlockMatrix([[1,1,CirculantMatrix(p,Q)],[1,2,CirculantMatrix(p,N)]],1,2);
 if p mod 4 = 1 then
     G0:=List([1..(p-1)],i->G[i]);
 else
    G0:=G;
 fi;
 C:=GeneratorMatCode(G0,F);
 C!.DoublyCirculant:=G0;
 C!.GeneratorMat:=G0;
 return C;
end);

#############################################################################
##
#F  QQRCodeNC( <n> [, <F>] ) . . . . . . . . binary quasi-quadratic residue code
##
## Code of Bazzi-Mittel (see Bazzi, L. and Mitter, S.K. "Some constructions of
##  codes from group actions" preprint March 2003 (submitted to IEEE IT)
##

InstallMethod(QQRCodeNC, "Modulus", true, [IsInt], 0,
function(p)
local G,G0,Q,N,QN,i,C,F,QuadraticResidueSupports,NonQuadraticResidueSupports;

# start local functions:
QuadraticResidueSupports:=function(p)
 local L,i;
 L:=List([1..(p-1)],i->1+Legendre(i,p))/2;
 return L;
 end;
 NonQuadraticResidueSupports:=function(p)
 local L,i;
 L:=List([1..(p-1)],i->1-Legendre(i,p))/2;
 return L;
 end;
# end local functions

 F:=GF(2);
 Q:=[Zero(F)];
 #Q:=[];
 Q:=One(F)*Concatenation(Q,QuadraticResidueSupports(p));
 N:=[Zero(F)];
 #N:=[];
 N:=One(F)*Concatenation(N,NonQuadraticResidueSupports(p));
 #QN:=Concatenation(Q,N);
 G:=BlockMatrix([[1,1,CirculantMatrix(p,N)],[1,2,CirculantMatrix(p,Q)]],1,2);
 if p mod 4 = 1 then
     G0:=List([1..(p-1)],i->G[i]);
 else
    G0:=G;
 fi;
 C:=GeneratorMatCodeNC(G0,F);
 C!.DoublyCirculant:=G0;
 C!.GeneratorMat:=G0;
 return C;
end);

#############################################################################
##
#F  NullCode( <n> [, <F>] ) . . . . . . . . . . . code consisting only of <0>
##

InstallMethod(NullCode, "wordlength, field", true, [IsInt, IsField], 0,
function(n, F)
    local C;
    C := ElementsCode([NullWord(n,F)], "nullcode", F);
    C!.lowerBoundMinimumDistance := n;
    C!.upperBoundMinimumDistance := n;
    SetMinimumDistance(C, n);
    SetWeightDistribution(C, Concatenation([1], NullVector(n)));
    SetAutomorphismGroup(C, SymmetricGroup(n));
    C!.boundsCoveringRadius := [ n ];
    SetCoveringRadius(C, n);
    IsCyclicCode(C);   # will set all basic linear and cyclic code info
    return C;
end);

InstallOtherMethod(NullCode, "wordlength, fieldsize", true, [IsInt, IsInt], 0,
function(n, q)
    return NullCode(n, GF(q));
end);

InstallOtherMethod(NullCode, "wordlength", true, [IsInt], 0,
function(n)
    return NullCode(n, GF(2));
end);


#############################################################################
##
#F  FireCode( <G>, <b> )  . . . . . . . . . . . . . . . . . . . . . Fire code
##
##  FireCode (G, b) constructs the Fire code that is capable of correcting any
##  single error burst of length b or less.
##  G is a primitive polynomial of degree m
##

InstallMethod(FireCode, "poly, burstlength", true,
    [IsUnivariatePolynomial, IsInt], 0,
function(G, b)
    local m, C, n;
    G := PolyCodeword(Codeword(G));
    if CoefficientsRing(DefaultRing(G)) <> GF(2) then
        Error("polynomial must be over GF(2)");
    fi;
    if Length(Factors(G)) <> 1 then
        Error("polynomial G must be primitive");
    fi;
    m := DegreeOfLaurentPolynomial(G);
    n := Lcm(2^m-1,2*b-1);
    C := GeneratorPolCode( G*(Indeterminate(GF(2))^(2*b-1) + One(GF(2))), n,
                 Concatenation(String(b), " burst error correcting fire code"),
                 GF(2) );
    return C;
end);

#############################################################################
##
#F  BinaryGolayCode( )  . . . . . . . . . . . . . . . . . . binary Golay code
##
InstallMethod(BinaryGolayCode, "only method", true, [], 0,
function()
    local p,C;
    p := LaurentPolynomialByCoefficients(
                    ElementsFamily(FamilyObj(GF(2))),
                    Z(2)^0*[1,0,1,0,1,1,1,0,0,0,1,1], 0);
    C := CyclicCodeByGenerator(GF(2), 23, Codeword(p));
    SetGeneratorPol(C, p);
    SetDimension(C, 12);
    SetRedundancy(C, 11);
    SetSize(C, 2^12);
    C!.name := "binary Golay code";
    C!.lowerBoundMinimumDistance := 7;
    C!.upperBoundMinimumDistance := 7;
    SetWeightDistribution(C,
        [1,0,0,0,0,0,0,253,506,0,0,1288,1288,0,0,506,253,0,0,0,0,0,0,1]);
    C!.boundsCoveringRadius := [ 3 ];
    SetIsNormalCode(C, true);
    SetIsPerfectCode(C, true);
    return C;
end);


#############################################################################
##
#F  TernaryGolayCode( ) . . . . . . . . . . . . . . . . .  ternary Golay code
##
InstallMethod(TernaryGolayCode, "only method", true, [], 0,
function()
    local p, C;
    p := LaurentPolynomialByCoefficients(ElementsFamily(FamilyObj(GF(3))),
                Z(3)^0*[2,0,1,2,1,1], 0);
    C := CyclicCodeByGenerator(GF(3), 11, Codeword(p));
    C!.name := "ternary Golay code";
    SetGeneratorPol(C, p);
    SetRedundancy(C, 5);
    SetDimension(C, 6);
    SetSize(C, 3^6);
    C!.lowerBoundMinimumDistance := 5;
    C!.upperBoundMinimumDistance := 5;
    SetWeightDistribution(C, [1,0,0,0,0,132,132,0,330,110,0,24]);
    SetIsNormalCode(C, true);
    SetIsPerfectCode(C, true);
    return C;
end);


#############################################################################
##
#F   EvaluationCode( <P>, <L>, <R> )
##
##   P is a list of n points in F^r
##   L is a list of rational functions in r variables
##   EvaluationCode returns the image of the evaluation map f->[f(P1),...,f(Pn)],
##   as f ranges over the vector space of functions spanned by L.
##   The output is the code whose generator matrix has rows (f(P1)...f(Pn)) where
##   f is in L and P={P1,..,Pn}
##
InstallMethod(EvaluationCode,"points, basis functions, multivariate poly ring", true,
[IsList, IsList, IsRing], 0,
function(P,L,R)
 local i, G, n, C, j, k, varsn,varsd, vars, F, ValueExtended;
#######################
  ValueExtended:=function(f,vars,pt)
   local df, nf;
   df:=DenominatorOfRationalFunction(f*vars[1]^0);
   nf:=NumeratorOfRationalFunction(f*vars[1]^0);
   #if (varsn=[] and varsd=[]) then return f; fi;
  return Value(nf,vars,pt)*Value(df,vars,pt)^(-1);
  end;
#######################
 vars:=IndeterminatesOfPolynomialRing(R);
 F:=CoefficientsRing(R);
 n:=Length(P);
 k:=Length(L);
 G:=ShallowCopy(NullMat(k,n,F));
 for i in [1..k] do
  for j in [1..n] do
       G[i][j]:=ValueExtended(L[i],vars,P[j]);
  od;
 od;
 C:=GeneratorMatCode(G," evaluation code",F);
 C!.EvaluationMat:=ShallowCopy(G);
 C!.basis:=L;
 C!.points:=P;
 C!.ring:=R;
 return C;
end);

#############################################################################
##
#F    GeneralizedReedSolomonCode( <P>, <k>, <R> )
##
##   P is a list of n points in F
##   k is an integer
##   GRSCode returns the image of the evaluation map f->[f(P1),...,f(Pn)],
##   as f ranges over the vector space of polynomials in 1 variable
##   of degree < k in the ring R.
##   The output is the code whose generator matrix has rows (f(P1)...f(Pn)) where
##   f = x^j, j<k, and P={P1,..,Pn}
##
InstallMethod(GeneralizedReedSolomonCode,"points, basis functions, univariate poly ring", true,
[IsList, IsInt, IsRing], 0,
function(P,k,R)
local p, L, vars, i, F, f, x, C, R0, P0, G, j, n;
 n:=Length(P);
 F:=CoefficientsRing(R);
 G:=NullMat(k,n,F);
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1];
 L:=List([0..(k-1)],i->(x^i));
 for i in [1..k] do
  for j in [1..n] do
       G[i][j]:=Value(L[i],vars,[P[j]]);
  od;
 od;
 C:=GeneratorMatCode(G," generalized Reed-Solomon code",F);
 C!.GeneratorMat:=ShallowCopy(G);
 C!.degree:=k;
 C!.points:=P;
 C!.ring:=R;
 SetSpecialDecoder(C, GeneralizedReedSolomonDecoder);
 return C;
end);

#############################################################################
##
#F    GeneralizedReedSolomonCode( <P>, <k>, <R> , <wts> )
##
##   P is a list of n points in F
##   k is an integer
##   GRSCode returns the image of the evaluation map f->[f(P1),...,f(Pn)],
##   as f ranges over the vector space of polynomials in 1 variable
##   of degree < k in the ring R.
##   The output is the code whose generator matrix has rows (w1*f(P1),...,wn*f(Pn)) where
##   f = x^j, j<k, P={P1,..,Pn}, wts=[w1,...,wn] \in F^n
##
InstallOtherMethod(GeneralizedReedSolomonCode,"points, basis functions, univariate poly ring", true,
[IsList, IsInt, IsRing, IsList], 0,
function(P,k,R,wts)
local p, L, vars, i, F, f, x, C, R0, P0, G, j, n;
 n:=Length(P);
 F:=CoefficientsRing(R);
 G:=NullMat(k,n,F);
 vars:=IndeterminatesOfPolynomialRing(R);
 x:=vars[1];
 L:=List([0..(k-1)],i->(x^i));
 for i in [1..k] do
  for j in [1..n] do
       G[i][j]:=wts[j]*Value(L[i],vars,[P[j]]);
  od;
 od;
 C:=GeneratorMatCode(G," weighted generalized Reed-Solomon code",F);
 C!.GeneratorMat:=ShallowCopy(G);
 C!.degree:=k;
 C!.points:=P;
 C!.weights:=wts;
 C!.ring:=R;
#SetSpecialDecoder(C, GeneralizedReedSolomonDecoder);
 return C;
end);

#############################################################################
##
#F    OnePointAGCode( <crv>, <pts>, <m>, <R> )
##
## R = F[x,y] is a polynomial ring over a finite field F
## crv is a polynomial in R representing a plane curve
## pts is a list of points on the curve
## Computes the AG codes associated to the RR space
## L(m*infinity) using Proposition VI.4.1 in Stichtenoth
##
InstallMethod(OnePointAGCode,
"polynomial defining planar curve, points, multiplicity, univariate poly ring",
true, [IsPolynomial, IsList, IsInt, IsRing], 0,
function(crv,pts,m,R)
 local F,f,indets,pt,i,j,G,C,degx,degy,basisLD,xx,yy,allpts;
 indets := IndeterminatesOfPolynomialRing(R);
 xx:=indets[1]; yy:=indets[2];
 F:=CoefficientsRing(R);
 allpts:=AffinePointsOnCurve(crv,R,F);
 if not(IsSubset(allpts,pts)) then
   Error("The points given must be on the curve\n");
 fi;
 degx:=DegreeIndeterminate(crv,xx);
 degy:=DegreeIndeterminate(crv,yy);
 basisLD:=[];
 for i in [0..(degx-1)] do
  for j in [0..m] do
   if degx*j+degy*i<m+1 then
    basisLD:=Concatenation([xx^i*yy^j],basisLD);
   fi;
  od;
 od;
 G:=List(pts,pt->List(basisLD,f->Value(f,indets,pt)));
 C:=GeneratorMatCode(TransposedMat(G)," one-point AG code",F);
 C!.GeneratorMat:=ShallowCopy(TransposedMat(G));
 C!.multiplicity:=m;
 C!.points:=pts;
 C!.curve:=crv;
 C!.ring:=R;
 return C;
end);

#############################################################################
##
#F    FerreroDesignCode( <P>, <m> )  ... code from a Ferrero design
##
##
#InstallMethod(FerreroDesignCode,
#"binary linear code constructed using a Ferrero design",
#true, [IsList, IsInt], 0,
#function( P,m)
# **Requires the GAP package SONATA**
# Constructs binary linear code arising from the incdence
# matrix of a design associated to a "Ferrero pair" arising
# from a fixed-point-free (fpf) automorphism groups and Frobenius group.
# The designs that we are looking at (from a Frobenius kernel
# of order v and a Frobenius complement of order k) have
# v*(v-1)/k distinct blocks and they are all of size k.
# Moreover each of the v points occurs in exactly v-1distinct
# blocks. Hence the rows and the columns of the incidence
# matrix M of the design are always of constant weight.
# Take a Frobenius (G,+) group with kernel K and complement H.
# Consider the design D with point set K and block set
# { a^H + b | a, b in K, a <> 0 }.
# Here a^H denotes the orbit of a under conjugation by elements
# of H. Every planar near-ring design of type "*" can be obtained
# in this way from groups. A group K together with a group of
# automorphism H of K such that the semidirect product KH is a
# Frobenius group with complement H is called a Ferrero pair (K, H)
# in SONATA.
#
# INPUT: P is a list of prime powers describing an abelian group G
#        m > 0 is an integer such that G admits a cyclic fpf
#        automorphism group of size m
# This means that for all q = p^k in P, OrderMod( p, m ) must divide q
# (see the SONATA documentation for FpfAutomorphismGroupsCyclic).
# OUTPUT: The binary linear code whose generator matrix is the
#         incidence matrix of a design associated to a "Ferrero pair" arising
#         from the fixed-point-free (fpf) automorphism group of G.
# The pair (H,K) is called a Ferraro pair and the semidirect product KH is a
# Frobenius group with complement H.
# AUTHORS: Peter Mayr and David Joyner
#local C, f, H, K, M, D;
# LoadPackage("sonata");
# f := FpfAutomorphismGroupsCyclic( P, m );
# K := f[2];
# H := Group( f[1][1] );
# D := DesignFromFerreroPair( K, H, "*" );
# M := IncidenceMat( D );
# C:=GeneratorMatCode(M*Z(2), GF(2));
#return C;
#end);

#Having trouble getting GUAVA to load without errors if
#SONATA is not installed. Uncomment this and reload if you
#have SONATA.
#FerreroDesignCode:=function( P,m)
#local C, f, H, K, M, D;
# LoadPackage("sonata");
# f := FpfAutomorphismGroupsCyclic( P, m );
# K := f[2];
# H := Group( f[1][1] );
# D := DesignFromFerreroPair( K, H, "*" );
# M := IncidenceMat( D );
# C:=GeneratorMatCode(M*Z(2), GF(2));
#return C;
#end;

#############################################################################
##
#F  QuasiCyclicCode( <G>, <s>, <F> ) . . . . . . . . . . . quasi cyclic code
##
##  QuasiCyclicCode ( <G>, <s>, <F> ) generates a rate 1/m quasi-cyclic
##  codes. Note that <G> is a list of univariate polynomial and m is the
##  cardinality of this list. The integer s is the size of the circulant
##  and it is not necessarily equal to the code dimension, i.e. k <= s.
##  The associated field is <F>.
##
InstallMethod(QuasiCyclicCode, "linear quasi-cyclic code", true,
    [IsList, IsInt, IsField], 0,
function( L1, s, F )
    #
    # A rate 1/m quasi-cyclic code contains m circulant matrices, each of
    # the same size, and in this case they are all s x s circulant matrices.
    # Each circulant can be specified by a univariate polynomial.
    #
    local i, m, v, M, C;

    # Determine the cardinality of the list L1
    m:=Size(L1);
    if (m < 2) then
        Error("The cardinality of <G> must be at least 2\n");
    fi;

    # Make sure that all the list elements are univariate polynomials
    for i in [1..m] do;
        if (IsUnivariatePolynomial(L1[i]) = false) then
            Error("All list elements must be univariate polynomials\n");
        fi;
        if (Degree(L1[i]) >= s) then
            Error("The degree of the polynomial must be less than s\n");
        fi;
    od;

    # Convert each univariate polynomial into a circulant matrix and
    # concatenate them to generate a generator matrix
    M:=[];
    for i in [1..m] do;
        v:=ShallowCopy( CoefficientsOfUnivariatePolynomial(L1[i]) );
        Append( v, List([1..(s - (Degree(L1[i])+1))], i->Zero(F)) );
        M:=Concatenation( M, CirculantMatrix(s, v) );
    od;
    C := GeneratorMatCode( TransposedMat(M), F );
    C!.name := "quasi-cyclic code";
    return C;
end);

InstallOtherMethod(QuasiCyclicCode, "binary linear quasi-cyclic code",
    true, [IsList, IsInt], 0,
function( L1, s )

    local i, j, m, a, t, v, L2, LUT;

    LUT:=[ "000", "001", "010", "011", "100", "101", "110", "111" ];

    # Determine the cardinality of the list L1
    m := Size(L1);
    if (m < 2) then
        Error("The cardinality of <G> must be at least 2\n");
    fi;

    L2 := [];
    for i in [1..m] do;
        if (IsInt(L1[i]) = false) then
            Error("All list elements must be in octal\n");
        fi;
        a := String(L1[i]);
        v := [];
        for j in [1..Length(a)] do;
            t := INT_CHAR(a[j]) - 48;   # Conversion of ASCII character to integer
            if (t > 7) then
                Error("All list elements must be in octal\n");
            fi;
            Append(v, LUT[t+1]);
        od;
        Append(L2, [ReciprocalPolynomial(PolyCodeword(Codeword(v)))]);
    od;

    return QuasiCyclicCode( L2, s, GF(2) );
end);

#####################################################################
##
#F CyclicMDSCode( <q>, <m>, <k> ) . . . . . . . . . cyclic MDS code
##
## Construct a [q^m + 1, k, q^m - k + 2] cyclic MDS code over GF(q^m)
##
InstallMethod(CyclicMDSCode, "method for linear code", true,
    [IsInt, IsInt, IsInt], 0,
function(q, m, k)
    local i, j, l, x, a, r, g, G, F, CS, C, dmin;

    if (k < 1) or (k > q^m + 1) then
        Error("Incorrect parameter, 1 <= k <= q^m+1.\n");
    fi;
    if IsEvenInt(k) and IsOddInt(q^m) then
        Error("Cannot construct such code, k must be odd for odd field size.\n");
    fi;

    F    := GF(q^m);
    x    := Indeterminate(F, "x");
    a    := PrimitiveUnityRoot(F, q^m+1);   # Primitive (q^m + 1)-st root of unity
    CS   := CyclotomicCosets(q^m, q^m + 1);
    dmin := q^m - k + 2;

    # R. Roth's book (Prob. 8.15, pp. 262)
    # If q^m is odd, there exists [q^m + 1, k, q^m - k + 2] cyclic MDS codes for
    # odd values of k in the range 1 <= k <= q^m. This is because the cyclotomic
    # cosets of q^m mod q^m + 1 are
    #    { 0, [1,q^m], [2,q^m-2], ..., [(q^m-1)/2, (q^m+3)/2], (q^m+1)/2 }.
    # There are two single elements in the above cosets, { 0 } and { (q^m+1)/2 }.
    # If k is odd, dmin = q^m - k + 2 is even and delta = dmin-1 is odd (BCH bound).
    # This can be easily obtained by including either { 0 } or { (q^m+1)/2 }.
    # On the other hand, if k is even, dmin is odd and delta is even. With reference
    # to the above cyclotomic cosets, we cannot have exactly delta consecutive integers.
    # (Does this definitely mean this kind of code cannot be constructed??)
    #
    # If q^m is even, there exists [q^m + 1, k, q^m - k + 2] cyclic MDS codes for
    # any value of k in the range 1 <= k <= q^m+1. This is because the cyclotomic
    # cosets of q^m mod q^m + 1 are
    #    { 0, [1,q^m], [2,q^m-2], ..., [q^m/2, 1 + q^m/2] }.
    # Consequently, we can easily construct a set of odd or even consecutive integers
    # using the cyclotomic cosets above.

    if IsEvenInt(k) then
        g := (x + a^0);
        r := [ a^0 ];
        for i in [1..((dmin-2)/2)] do;
            g := g * (x + a^(CS[i+1][1])) * (x + a^(CS[i+1][2]));
            r := Concatenation(r, [ a^(CS[i+1][1]), a^(CS[i+1][2]) ]);
        od;
    else
        if IsOddInt(q^m) then
            g := (x + a^(CS[Size(CS)][1]));
            r := [ a^(CS[Size(CS)][1]) ];
            j := Size(CS)-1;
            l := (dmin-2)/2;
        else
            g := 1;
            r := [];
            j := Size(CS);
            l := (dmin-1)/2;
        fi;
        for i in [0..l-1] do;
            g := g * (x + a^(CS[j-i][1])) * (x + a^(CS[j-i][2]));
            r := Concatenation(r, [ a^(CS[j-i][1]), a^(CS[j-i][2]) ]);
        od;
    fi;

    G := GeneratorMatrixFromPoly(g, q^m + 1);
    C := GeneratorMatCodeNC(G, F);

    C!.name := "MDS code";

    # We know these bounds as it is an MDS code
    C!.lowerBoundMinimumDistance := dmin;
    C!.upperBoundMinimumDistance := dmin;

    # Tell it that it is a cyclic code
    SetIsCyclicCode(C, true);
    SetGeneratorPol(C, g);

    # Also tell it that it is an MDS code
    IsMDSCode(C);

    return C;
end);

#######################################################################
##
#F FourNegacirculantSelfDualCode( <ax>, <bx>, <k> ) . . self-dual code
##
## Construct a [2*k, k, d] self-dual code over F using Harada's
## construction. See:
##
##    1. M. Harada and T. Nishimura, "An extremal singly even self
##       dual code of length 88", Advances in Mathematics of
##       Communications, vol 1, no. 2, pp. 261--267, 2007
##
##    2. M. Harada, W. Holzmann, H. Kharaghani and M. Khorvash,
##       "Extremal ternary self-dual codes constructed from
##       negacirculant matrices", Graph and Combinatorics, vol 23,
##       pp. 401--417, 2007
##
##    3. M. Harada, "An extremal doubly even self-dual code of
##       length 112", preprint
##
## The generator matrix of the code has the following form:
##
##        -                   -
##        |       :   A  :  B  |
##    G = |   I   :------:-----|
##        |       : -B^T : A^T |
##        -                   -
##
## Note that the matrices A, B, A^T and B^T are k/2 * k/2
## negacirculant matrices.
##
__G_FourNegacirculantSelfDualCode := function(ax, bx, k)
    local i, v, m, x, FA, FB, A, AT, B, BT, G;

    if IsOddInt(k) then
        Error("k must be an even integer\n");
    fi;

    m := k/2;

    # Determine field size
    FA := Field(VectorCodeword(Codeword(ax)));
    FB := Field(VectorCodeword(Codeword(bx)));
    if FA <> FB then
        Error("Polynomials a(x) and b(x) must have elements from the same field\n");
    fi;

    x := Indeterminate(FA);

    v := MutableCopyMat( CoefficientsOfUnivariatePolynomial(ax) );
    Append( v, List([1..(m - (Degree(ax)+1))], i->Zero(FA)) );
    A := NegacirculantMatrix(m, v*One(FA));
    AT:= TransposedMat(A);

    v := MutableCopyMat( CoefficientsOfUnivariatePolynomial(bx) );
    Append( v, List([1..(m - (Degree(bx)+1))], i->Zero(FA)) );
    B := NegacirculantMatrix(m, v*One(FA));
    BT:= TransposedMat(-B);

    G := IdentityMat(k, One(FA));

    # [ A | B ]
    for i in [1..m] do;
        Append(G[i], A[i]);
        Append(G[i], B[i]);
    od;

    # [ B^T | A^T ]
    for i in [1..m] do;
        Append(G[m+i], BT[i]);
        Append(G[m+i], AT[i]);
    od;

    return G;
end;

InstallMethod(FourNegacirculantSelfDualCode, "method for binary linear code", true,
    [IsUnivariatePolynomial, IsUnivariatePolynomial, IsInt], 0,
function(ax, bx, k)
    local G, C, F;

    # Obtain the generator matrix
    G := __G_FourNegacirculantSelfDualCode(ax, bx, k);
    F := Field(VectorCodeword(Codeword(ax)));

    C := GeneratorMatCode(G, "four-negacirculant self-dual code", F);
    C!.GeneratorMat := ShallowCopy(G);

    if (IsSelfDualCode(C) = false) then
        Error("Polynomials a(x) and b(x) do not produce a self-dual code\n");
    fi;

    return C;
end);

# Faster version - no minimum distance and covering radius estimation
InstallMethod(FourNegacirculantSelfDualCodeNC, "method for binary linear code", true,
    [IsUnivariatePolynomial, IsUnivariatePolynomial, IsInt], 0,
function(ax, bx, k)
    local G, C, F;

    # Obtain the generator matrix
    G := __G_FourNegacirculantSelfDualCode(ax, bx, k);
    F := Field(VectorCodeword(Codeword(ax)));

    C := GeneratorMatCodeNC(G, F);
    C!.name := "four-negacirculant self-dual code";
    C!.GeneratorMat := ShallowCopy(G);
    C!.lowerBoundMinimumDistance := 1;
    C!.upperBoundMinimumDistance := k+1;
    C!.boundsCoveringRadius := [ 0, WordLength(C) ];

    if (IsSelfDualCode(C) = false) then
        Error("Polynomials a(x) and b(x) do not produce a self-dual code\n");
    fi;

    return C;
end);

###########################################################################
##
#F QCLDPCCodeFromGroup( <m>, <j>, <k> ) . . Regular quasi-cyclic LDPC code
##
## Construct a regular (j,k) quasi-cyclic low-density parity-check (LDPC)
## code over GF(2) based on the multiplicative group of integer modulo m.
## If m is a prime, the size of the group is equal to Phi(m) = m - 1,
## otherwise it is equal to Phi(m). For details, refer to the paper by:
##
##   R. Tanner, D. Sridhara, A. Sridharan, T. Fuja and D. Costello,
##   "LDPC block and convolutional codes based on circulant matrices",
##   IEEE Trans. Inform. Theory, vol. 50, no. 12, pp. 2966--2984, 2004
##
## NOTE that j and k must divide Phi(m).
##
InstallMethod(QCLDPCCodeFromGroup, "method for binary linear code", true,
	[IsInt, IsInt, IsInt], 0,
function(m, j, k)
    local r, c, a, b, p, P, H, M, C, PermutationMatrix;

    ##
    ##----------------- start of private functions ---------------------
    ##
    ## PermutationMatrix - a private function for QCLDPCCodeFromGroup
    PermutationMatrix := function(m, i)
        local s, P, L;
        if i = 0 or i > m then
            Error("invalid value of i, 1 \\le i \\le ", m, "\n");
        fi;
        P := [];
        L := List([1..m], i->Zero(GF(2))); L[i] := One(GF(2));
        Append(P, [ L ]);
        for s in [2..m] do;
            L := RightRotateList(L);
            Append(P, [ L ]);
        od;
        return P;
    end;
    ##
    ##------------------ end of private functions ----------------------
    ##

    p := Phi(m);
    if (p mod j <> 0) then
        Error(j, " does not divide ", p, "=Phi(", m, ")\n");
    fi;
    if (p mod k <> 0) then
        Error(k, " does not divide ", p, "=Phi(", m, ")\n");
    fi;

    a := Position( List([1..m-1], i->OrderMod(i, m) ), k );
    b := Position( List([1..m-1], i->OrderMod(i, m) ), j );

    P := [];
    for r in [0..j-1] do;
        Append(P, [ List([0..k-1], i->a^i*b^r mod m) ]);
    od;

    H := [];
    for r in [1..j] do;
        M := [];
        for c in [1..k] do;
            M := TransposedMat( Concatenation( TransposedMat(M), TransposedMat( PermutationMatrix(m, P[r][c]) ) ) );
        od;
        Append(H, M);
    od;
    C := CheckMatCode( H, GF(2) );
    C!.CheckMat := H;
    C!.name := "low-density parity-check code";
    C!.upperBoundMinimumDistance := Factorial(j+1);
    return C;
end);
