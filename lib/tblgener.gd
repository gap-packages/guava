#############################################################################
##
#A  tblgener.gd             GUAVA library                       Reinald Baart
#A                                                         Jasper Cramwinckel
#A                                                            Erik Roijackers
#A                                                                Eric Minkes
##
##  Table generation
##
#H  @(#)$Id: tblgener.gd,v 1.2 2003/02/12 03:49:21 gap Exp $
##
Revision.("guava/lib/tblgener_gd") :=
    "@(#)$Id: tblgener.gd,v 1.2 2003/02/12 03:49:21 gap Exp $";

#############################################################################
##
#F  CreateBoundsTable( <Sz>, <q> [, <info> ] ) . . constructs table of bounds
##
DeclareOperation("CreateBoundsTable", [IsInt, IsInt, IsBool]); 

