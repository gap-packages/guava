##
###################### GUAVA test file
##
## Created 04-2016; Joe Fields
##
for n in [32..35] do
Print("n = ", n, "\n");
for k in [1..n] do
C:=BestKnownLinearCode(n,k,2);;
if C <> fail then
Print("  ",k,"-", MinimumDistance(C));
else
Print(" --- (", n,",",k,") - " );
fi;
od;
Print("\n");
od;
