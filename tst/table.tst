##
###################### GUAVA test file
##
## Created 04-2016; Joe Fields
##
for n in [4..30] do
Print("n = ", n, "\n");
for k in [1..n] do
C:=BestKnownLinearCode(n,k,2);;
if C <> fail then
Print(" ", MinimumDistance(C));
else
Print("    ");
fi;
od;
Print("\n");
od;
