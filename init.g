#############################################################################
##
#A  init.g                  GUAVA library                       Reinald Baart
#A                                                         Jasper Cramwinckel
#A                                                            Erik Roijackers

#A                                                                 Lea Ruscio
#A                                                               David Joyner
#A                                                                  CJ, Tjhai
#A                                                                 Joe Fields 
##
#H  @(#)$Id: init.g,v 2.0 2003/02/27 22:45:16 gap Exp $
## added read curves.gd 5-2005
## added existence check for minimum-weight 
#H  @(#)$Id: init.g,v 2.1 2011/06/23 22:45:16 gap Exp $
## commented-out the calls to Declare* which are obsolete as of GAP 4.4
## --JEF
## Replaced "ReadPkg" with "ReadPackage" in the calls that load Guava
## package files. The former is now depracated. --JEF 21/5/2012
##
##  Announce the package version and test for the existence of the binary.
##
###
### As of GAP 4.4 the functions "DeclarePackage", "DeclareAutoPackage", 
### "DeclarePackageDocumentation" and "DeclarePackageAutoDocumentation"
### became obsolete.
#DeclarePackage( "guava", "3.6",
#  function()
#    local path;
#
#    if not CompareVersionNumbers( VERSION, "4.4.5" ) then
#        Info( InfoWarning, 1,
#              "Package ``GUAVA'': requires at least GAP 4.4.5" );
#        return fail;
#    fi;
#
#    # Test for existence of the compiled binary
#    path := DirectoriesPackagePrograms( "guava" );
#
#    if ForAny( ["desauto", "leonconv", "wtdist", "minimum-weight"], 
#               f -> Filename( path, f ) = fail ) then
#        Info( InfoWarning, 1,
#              "Package ``GUAVA'': the C code programs are not compiled." );
#        Info( InfoWarning, 1,
#     "Some GUAVA functions, e.g. `ConstantWeightSubcode' and MinimumWeight, ",
#              "will be unavailable. ");
#        Info( InfoWarning, 1,
#              "See ?Installing GUAVA" );
#    fi;
#
#    return true;
#  end );
#
#DeclarePackageAutoDocumentation( "GUAVA", "doc", "GUAVA",
#                                 "GUAVA Coding Theory Package" );
#
ReadPackage("guava", "lib/util2.gd"); 
ReadPackage("guava", "lib/codeword.gd");   
ReadPackage("guava", "lib/codegen.gd"); 
ReadPackage("guava", "lib/matrices.gd");
ReadPackage("guava", "lib/codeman.gd"); 
ReadPackage("guava", "lib/nordrob.gd"); 
ReadPackage("guava", "lib/util.gd"); 
ReadPackage("guava", "lib/curves.gd"); 
ReadPackage("guava", "lib/codeops.gd"); 
ReadPackage("guava", "lib/bounds.gd"); 
ReadPackage("guava", "lib/codefun.gd"); 
ReadPackage("guava", "lib/decoders.gd"); 
ReadPackage("guava", "lib/codecr.gd");
ReadPackage("guava", "lib/codecstr.gd");
ReadPackage("guava", "lib/codemisc.gd");
ReadPackage("guava", "lib/codenorm.gd");
ReadPackage("guava", "lib/tblgener.gd"); 
ReadPackage("guava", "lib/toric.gd"); 

