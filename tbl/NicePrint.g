NicePrint := function ( M )
    local i, r;
    Print("[ ");
    for r in M do
        Print("[");
        for i in r do
            if i = 0 * Z(2) then
                Print( "0,");
            else
                Print( "1,");
            fi;
        od;
        Print( "], \n");
    od;
    return;
end;
