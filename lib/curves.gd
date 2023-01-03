#############################################################################
##
#A  curves.gd                GUAVA library                      David Joyner
#A
#A
##
##  This file contains functions related to AG codes and RR spaces on P^1
##
## created 5-9-2005: also, moved
##       DivisorsMultivariatePolynomial (and subfunctions),
##       from util2.gi (where it was in guava 2.0)
## added 5-15-2005:
##       MoebiusTransformation, ActionMoebiusTransformationOnFunction,
##       ActionMoebiusTransformationOnDivisorP1, DivisorAutomorphismGroupP1,
##       MatrixRepresentationOnRiemannRochSpaceP1
##

###########################################################
##
##      DegreesMonomialTerm(m)
##
## Input: a monomial m in n variables,
##        n1 <= n is the number of variables occurring
##          in each monomial term of m.
## Output: the list of degrees of each variable in m.
##
DeclareOperation("DegreesMonomialTerm", [IsRingElement, IsRing]);

###########################################################
##
##      DegreesMultivariatePolynomial(f,R)
##
## Input: multivariate poly <f> in R=F[x1,x2,...,xn]
##        a multivariate polynomial ring <R> containing <f>
## Output: the list of degrees of each term in <f>.
##
DeclareOperation("DegreesMultivariatePolynomial", [IsRingElement, IsRing]);

###########################################################
##
#F      DegreeMultivariatePolynomial( <f>, <R> )
##
## Input: multivariate poly <f> in R=F[x1,x2,...,xn]
##        a multivariate polynomial ring <R> containing <f>
## Output: the degree of <f>.
##
DeclareOperation("DegreeMultivariatePolynomial", [IsRingElement, IsRing]);

########################################################################
##
#F  CoefficientToPolynomial( <coeffs> , <R> )
##
##  Input: a list of coeffs = [c0,c1,..,cd]
##         a univariate polynomial ring R = F[x]
##  Output: a polynomial c0+c1*x+...+cd*x^(d-1) in R
##
DeclareOperation("CoefficientToPolynomial", [IsList, IsRing]);

########################################################################
##
#F  DivisorsMultivariatePolynomial( <f> , <R> )
##
## Input: f is a polynomial in R=F[x1,...,xn]
## Output: all divisors of f
## uses a slow algorithm (see Joachim von zur Gathen, Jürgen Gerhard,
##  Modern Computer Algebra, exercise 16.10)
DeclareOperation("DivisorsMultivariatePolynomial",[IsPolynomial,IsPolynomialRing]);

###########################################################
##
#F      AffineCurve(<poly>, <ring> )
##
## Input: <poly> is a polynomial in the ring F[x,y],
##        <ring> is a bivariate ring containing <f>
## Output: associated record: polynomial component and a ring component
##
DeclareOperation("AffineCurve", [IsRingElement, IsRing]);

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
DeclareOperation("GenusCurve", [IsRecord]);

#############################################################################
##
#F  OnCurve(<Pts>, <crv>)
##
## Input: <crv> is a curve record structure
##        <Pts> a list of pts in F^2
##        crv: f(x,y)=0, f a poly in F[x,y]
## Output: true if they are all on crv
##         false otherwise
##
DeclareOperation("OnCurve",[IsList,IsRecord]);

#############################################################################
##
#F  AffinePointsOnCurve(<f>, <R>, <E>)
##
##  returns the points in $f(x,y)=0$ where $(x,y) \in E$ and
##  $f\in R=F[x,y]$, $E/F$ finite fields.
##
DeclareGlobalFunction("AffinePointsOnCurve");
#DeclareOperation("AffinePointsOnCurve",[IsPolynomial,IsRing,IsField]);

###########################################################
##
#F      DivisorOnAffineCurve(<cdiv>, <sdiv>, <crv> )
##
##
## Input: <cdiv> list of integers (coeffs of divisor),
##        <sdiv> is a list of points (support of divisor),
##        <crv> is a curve record
## Output: associated divisor record
##
DeclareOperation("DivisorOnAffineCurve", [IsList, IsList, IsRecord]);

###########################################################
##
#F      DivisorOnAffineCurve(<div1>, <div2> )
##
## Input: <div1> , <div2> are divisor records
## Output: sum
##
DeclareOperation("DivisorAddition", [IsRecord, IsRecord]);

###########################################################
##
#F      DivisorDegree( <div> )
##
## Input: <div> a divisor record
## Output: degree = sum of coeffs
##
DeclareOperation("DivisorDegree", [IsRecord]);

###########################################################
##
#F      DivisorIsEffective( <div> )
##
## Input: <div> a divisor record
## Output: true if all coeffs>=0, false otherwise
##
DeclareOperation("DivisorIsEffective", [IsRecord]);

###########################################################
##
#F      DivisorNegate( <div> )
##
## Input: <div> a divisor record
## Output: -div
##
DeclareOperation("DivisorNegate", [IsRecord]);

###########################################################
##
#F      DivisorIsZero( <div> )
##
## Input: <div> a divisor record
## Output: true if all coeffs=0, false otherwise
##
DeclareOperation("DivisorIsZero", [IsRecord]);

###########################################################
##
#F      DivisorEqual(<div1>, <div2> )
##
## Input: <div1> , <div2> are divisor records
## Output: true if div1=div2
##
DeclareOperation("DivisorEqual", [IsRecord, IsRecord]);


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
DeclareOperation("DivisorGCD", [IsRecord, IsRecord]);

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
DeclareOperation("DivisorLCM", [IsRecord, IsRecord]);

###########################################################
##
#F      RiemannRochSpaceBasisFunctionP1(<P>, <k>, <R> )
##
## Input: <P> is a point in F^2, F=finite field,
##        <k> is an integer,
##        <R> is a polynomial ring in x,y
## Output: associated basis function of P^1, 1/(x-P)^k
##
DeclareOperation("RiemannRochSpaceBasisFunctionP1", [IsExtAElement, IsInt, IsRing]);

###########################################################
##
#F      RiemannRochSpaceBasisEffectiveP1(<div> )
##
## Input: <div> is an effective divisor on P^1
## Output: associated basis functions of L(div) on P^1
##
DeclareOperation("RiemannRochSpaceBasisEffectiveP1", [IsRecord]);

###########################################################
##
#F      RiemannRochSpaceBasisP1(<div> )
##
## Input: <div> is a divisor on P^1
## Output: associated basis functions of L(div) on P^1
##
DeclareOperation("RiemannRochSpaceBasisP1", [IsRecord]);

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
DeclareOperation("MoebiusTransformation", [IsMatrix,IsRing]);

###########################################################
##
#F      ActionMoebiusTransformationOnFunction(A,f,R2)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <f> is a rational function in F(x)
##        <R2> is a polynomial ring in x,y, R2=F[x,y]
## Output: associated function Af
##
DeclareOperation("ActionMoebiusTransformationOnFunction",[IsMatrix,IsRationalFunction,IsRing]);

###########################################################
##
#F      ActionMoebiusTransformationOnDivisorP1(A,div)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <div> is a divisor on P^1
## Output: associated divisor Adiv
##
DeclareOperation("ActionMoebiusTransformationOnDivisorP1",[IsMatrix,IsRecord]);


###########################################################
##
#F      ActionMoebiusTransformationOnDivisorDefinedP1(A,div)
##
## Input: <A> is a 2x2 matrix with entries in a field F
##        <div> is a divisor on P^1
## Output: returns true if associated divisor Adiv is
##         not supported at infinity
##
DeclareOperation("ActionMoebiusTransformationOnDivisorDefinedP1",[IsMatrix,IsRecord]);

###########################################################
##
#F      DivisorAutomorphismGroupP1(div)
##
## Input: <div> is a divisor on P^1 over a finite field
## Output: returns subgroup of GL(2,F) which preserves div
##
## *** very slow ***
##
DeclareOperation("DivisorAutomorphismGroupP1",[IsRecord]);

###########################################################
##
#F      MatrixRepresentationOnRiemannRochSpaceP1(g,div)
##
## Input: g in G subgp Aut(D) subgp Aut(X)
##        D a divisor on a curve X
## Output: a dxd matrix, where d = dim L(D),
##         representing the action of g on L(D).
## Note: g sends L(D) to r*L(D), where
##       r is a polynomial of degree 1 depending on
##       g and D
##
## *** very slow ***
##
DeclareOperation("MatrixRepresentationOnRiemannRochSpaceP1", [IsMatrix,IsRecord]);

###########################################################
##
#F      GOrbitPoint:(G,P)
##
## P must be a point in P^n(F)
## G must be a finite subgroup of GL(n+1,F)
##   returns all (representatives of projective)
##   points in the orbit G*P
##
DeclareOperation("GOrbitPoint", [IsGroup,IsList]);

############################################
#          AG codes
############################################

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
DeclareOperation("EvaluationBivariateCode", [IsList, IsList, IsRecord]);

###########################################################
##
#F      EvaluationBivariateCodeNC(<P>, <L>, <crv> )
##
## Input: <P> are points in F^2, F=finite field,
##        <L> is a list of ratl fcns on <crv>
## Output: associated evaluation code
##
DeclareOperation("EvaluationBivariateCodeNC", [IsList, IsList, IsRecord]);

###########################################################
##
#F      DivisorOfRationalFunctionP1(<f>, <R> )
##
## Input: <f> is a rational function of x
##        <R> is a polynomial ring in x,y
## Output: associated divisor of <f>
##
DeclareOperation("DivisorOfRationalFunctionP1", [IsRationalFunction, IsRing]);

############################################################
##
#F     GoppaCodeClassical(<div>,<pts>)
##
##          classical Goppa codes
##   Vaguely related to GeneralizedSrivastavaCode?
##   (Think of a weighted dual of a classical Goppa code of
##   an effective divisor of the form div = kP1+kP2+...+kPn?)
##
DeclareOperation("GoppaCodeClassical", [IsRecord, IsList]);

###########################################################
##
#F      XingLingCode(<k>, <R> )
##
## Input: <k> is an integer
##        <R> is a polynomial ring of one variable
## Output: associated evaluation code
##
DeclareOperation("XingLingCode", [IsInt, IsRing]); 