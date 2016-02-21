#############################################################################
##  
#A  codes4.g                GUAVA library                   Reinald Baart
#A                                                       & Jasper Cramwinckel
#A                                                          & Erik Roijackers
##  
#Y  Copyright (C)  1994,  Vakgroep Algemene Wiskunde,  T.U. Delft,  Nederland
## 
#H  CJ, 17 May 2006
#H  Updated lower- and upper-bounds of minimum distance for GF(2),
#H  GF(3) and GF(4) codes. (Brouwer's table as of 11 May 2006)
#H 
#H  $Log: codes4.g,v $
#H  Revision 1.1.1.1  1998/03/19 17:31:41  lea
#H  Initial version of GUAVA for GAP4.  Development still under way.
#H  Lea Ruscio 19/3/98
#H
#H 
#H  Revision 1.2  1997/01/20 15:34:25  werner
#H  Upgrade from Guava 1.2 to Guava 1.3 for GAP release 3.4.4.
#H 
#H  Revision 1.1  1994/11/10  14:29:23  rbaart
#H  Initial revision
#H 
## 
YouWantThisCode := function(n, k, d, ref)
	if IsList( GUAVA_TEMP_VAR ) and GUAVA_TEMP_VAR[1] = false then
		Add( GUAVA_TEMP_VAR, [n, k, d, ref] );
	fi;
	return [n, k] = GUAVA_TEMP_VAR;
end;

if YouWantThisCode(   6,   3,   4, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  12,   6,   6, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  17,   4,  12, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  17,  13,   4, "ovo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  18,   6,  10, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  18,   9,   8, "MOS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  20,  10,   8, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  20,  13,   6, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  21,  12,   7, "KPm" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  21,  15,   5, "KPm" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  24,   5,  16, "Li1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  24,   7,  13, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  26,   6,  16, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  26,  16,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  27,   8,  14, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  27,   9,  13, "GuB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  27,  19,   6, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,   4,  20, "GH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,   6,  17, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,   7,  16, "GuB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,   5,  20, "KPq" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,   8,  16, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,   9,  15, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,  10,  14, "Da4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,  11,  13, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,  15,  12, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  31,   4,  22, "GH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  32,   6,  20, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  32,   7,  19, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  32,  16,  11, "Du3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  33,   5,  22, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  33,  10,  16, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  33,  11,  15, "DG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  34,   9,  18, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  34,  13,  14, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  35,   6,  22, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,   8,  20, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,   9,  19, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,  12,  16, "DG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,  18,  12, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,  24,   8, "Zi" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  38,   9,  20, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  38,  10,  19, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  38,  19,  12, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  39,   7,  24, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  39,  12,  18, "KPm" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  39,  13,  17, "BMP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  39,  21,  11, "KPm" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  39,  24,   9, "KPm" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  40,   5,  28, "KPq" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  41,  36,   4, "IN" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,   6,  28, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,   9,  23, "Ayd" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  10,  22, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  12,  20, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  14,  18, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  15,  17, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  17,  16, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  31,   7, "Zi" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  43,   5,  30, "Liz" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  43,  36,   5, "KPc" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  44,   8,  27, "Zi" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  44,  22,  14, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  45,   7,  28, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  45,  15,  18, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  45,  16,  17, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,   5,  32, "Liz" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,  11,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,  12,  22, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,  14,  20, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,  23,  14, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,   6,  32, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,  12,  23, "DG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,  24,  14, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,   4,  36, "GH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  50,  10,  27, "Da4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  50,  28,  12, "D1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,   5,  36, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,  13,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,  18,  19, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,  35,   9, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,  37,   8, "LX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  51,  42,   6, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,   7,  33, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,   9,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,  12,  25, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,  17,  22, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  53,   6,  36, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  54,  27,  16, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  54,  39,   8, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  55,  10,  31, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  55,  11,  29, "DG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,   5,  40, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,   9,  34, "YC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,  18,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,  34,  12, "D1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  58,  10,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,   9,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,  13,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,  16,  28, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  62,  31,  18, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  62,  32,  15, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  63,  13,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  63,  14,  31, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  63,  18,  28, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  16,  30, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  20,  27, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  36,  14, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  54,   6, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,   8,  44, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  12,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  27,  23, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  28,  19, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  46,  10, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  57,   5, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  66,  15,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,   5,  48, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  13,  35, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  18,  30, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  20,  28, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  26,  24, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  29,  19, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  36,  15, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,  45,  11, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  15,  33, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  28,  21, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  34,  18, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  39,  14, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  48,  10, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  13,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  19,  29, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  23,  27, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  25,  25, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  27,  24, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  41,  13, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  44,  12, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  50,   9, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   4,  52, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   5,  50, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   7,  48, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   9,  44, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  11,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  12,  38, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  14,  35, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  15,  34, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  16,  33, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  18,  31, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  29,  21, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  30,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  31,  19, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  35,  18, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  38,  15, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  47,  11, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  57,   7, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  71,  22,  28, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  71,  24,  27, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  71,  28,  23, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,   8,  48, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  14,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  20,  30, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  26,  26, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  27,  25, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  36,  18, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  42,  14, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  46,  12, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  51,  10, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  56,   8, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  73,  23,  28, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  73,  29,  23, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  73,  30,  22, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  73,  44,  13, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  73,  53,   9, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  20,  31, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  26,  27, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  28,  24, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  41,  15, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  50,  11, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,   4,  56, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  11,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  13,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  16,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  31,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  34,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  37,  18, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  75,  44,  14, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  22,  30, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  25,  28, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  27,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  29,  24, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  30,  23, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  33,  21, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  39,  17, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  77,   7,  52, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  77,   8,  50, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  77,  23,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  77,  28,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  77,  52,  11, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,   6,  56, "Hi" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  12,  44, "Ayd" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  22,  31, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  26,  28, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  33,  22, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  34,  21, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  78,  39,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  79,  19,  36, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  79,  29,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  79,  47,  14, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  79,  49,  13, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,   8,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  11,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  22,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  23,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  27,  28, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  28,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  32,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  33,  23, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  38,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  45,  16, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  25,  30, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  29,  26, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  43,  17, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  70,   6, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  82,  26,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  82,  31,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  82,  36,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  83,  23,  32, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  83,  25,  31, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  83,  43,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  27,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,   6,  60, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,   8,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  14,  48, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  15,  45, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  16,  44, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  17,  43, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  18,  42, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  19,  40, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  22,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  23,  33, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  24,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  26,  31, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  30,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  32,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  33,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  36,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  38,  22, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  42,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  49,  16, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  58,  12, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  63,  10, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  64,   9, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  81,   3, "Ham" ) then
    GUAVA_TEMP_VAR := [ HammingCode, [ 4, 4 ]];
fi;
if YouWantThisCode(  86,   9,  54, "Da" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  11,  52, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  28,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  31,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  37,  23, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  40,  21, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  51,  15, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  53,  14, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  19,  41, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  24,  33, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  27,  31, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  33,  26, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  43,  20, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  48,  17, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  56,  13, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,   5,  64, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  20,  38, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  23,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  26,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  31,  28, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  40,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  47,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  19,  42, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  21,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  25,  33, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  29,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  30,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  33,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  36,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  46,  19, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  52,  16, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  63,  11, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,   6,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,   8,  58, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,   9,  56, "BZx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  13,  50, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  16,  46, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  18,  44, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  23,  36, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  24,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  27,  32, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  39,  24, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  40,  23, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  67,  10, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  73,   8, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,   7,  61, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  11,  54, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  15,  48, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  20,  40, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  22,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  29,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  33,  28, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  36,  26, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  44,  21, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  46,  20, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  21,  39, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  24,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  25,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  27,  33, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  31,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  16,  48, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  18,  46, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  19,  44, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  22,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  23,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  29,  32, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  33,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  36,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  39,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  44,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,   5,  68, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  11,  56, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  13,  53, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  25,  36, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  26,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  27,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  31,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  54,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  58,  15, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  70,  10, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,   8,  62, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,   9,  59, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  10,  58, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  12,  54, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  14,  52, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  15,  51, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  29,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  36,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  39,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  51,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  53,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  73,   9, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,   7,  64, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  17,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  19,  45, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  21,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  22,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  23,  39, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  24,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  26,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  31,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  34,  30, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  44,  24, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  50,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  58,  16, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  62,  14, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,   6,  68, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  28,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  29,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  36,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  39,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  49,  21, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,   8,  64, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  15,  52, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  18,  48, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  34,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  43,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  66,  13, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,   5,  72, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  17,  50, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  24,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  32,  33, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  39,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  49,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  11,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  19,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  21,  45, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  23,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  26,  39, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  29,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  30,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  34,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  37,  30, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  43,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  17,  51, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  25,  40, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  27,  38, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  28,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  32,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  39,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,   6,  72, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  10,  64, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  12,  60, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  15,  54, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  16,  53, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  18,  50, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  20,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  22,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  34,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  37,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  43,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  49,  24, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  57,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  59,  18, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  61,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  74,  12, "Tol" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  24,  42, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  26,  40, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  31,  36, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  32,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  47,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  56,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,   7,  71, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  28,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  29,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  37,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  40,  30, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  43,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  50,  24, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  55,  21, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  65,  16, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  67,  15, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  75,  12, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,   8,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  15,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  18,  52, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  21,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  24,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  25,  42, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  26,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  31,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  35,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  47,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  54,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  28,  40, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  33,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  37,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  40,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  43,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  53,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  94,   6, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  17,  54, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  19,  51, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  30,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  31,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  35,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  47,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  72,  14, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,   6,  76, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  24,  45, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  25,  44, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  26,  43, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  27,  42, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  28,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  33,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  40,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  43,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  53,  24, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  90,   8, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  23,  49, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  30,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  38,  34, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  47,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  52,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,   8,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  15,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  17,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  20,  51, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  24,  46, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  25,  45, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  26,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  27,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  32,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  36,  36, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  40,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  43,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  62,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  64,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  77,  13, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  29,  42, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  30,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  34,  38, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  38,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  47,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  52,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  61,  21, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  67,  18, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  69,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  83,  11, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  92,   8, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,   7,  76, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  19,  55, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  21,  51, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  32,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  36,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  43,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  51,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  60,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  89,   9, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  14,  68, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  27,  45, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  28,  44, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  29,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  34,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  38,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  41,  34, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  47,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  59,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  73,  16, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  99,   7, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,   9,  74, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  31,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  32,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  36,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  51,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  58,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114, 105,   5, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,   5,  84, "Gu3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,   8,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  10,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  15,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  17,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  22,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  26,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  27,  46, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  28,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  41,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  44,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  47,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  57,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  77,  15, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  21,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  23,  51, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  25,  49, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  30,  44, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  31,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  35,  40, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  39,  37, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  51,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,   6,  84, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,   7,  80, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  24,  50, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  33,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  37,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  41,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  44,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  47,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  57,  26, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,   4,  88, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  19,  60, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  30,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  35,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  39,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  51,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  56,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  69,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118, 102,   7, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  20,  59, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  26,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  32,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  33,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  37,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  44,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  47,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  66,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  68,  21, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  72,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  83,  14, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  99,   8, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,   5,  88, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,   8,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  10,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  13,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  15,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  17,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  21,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  22,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  23,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  24,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  25,  51, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  29,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  35,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  42,  37, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  51,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  56,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  65,  23, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  75,  18, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  90,  12, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  30,  47, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  31,  46, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  32,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  40,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  44,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  47,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  55,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  64,  24, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  78,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,   6,  88, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  26,  51, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  27,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  28,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  34,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  38,  41, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  42,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  51,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  63,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,   4,  92, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  30,  48, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  31,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  36,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  40,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  55,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  62,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  23,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  25,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  33,  46, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  34,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  38,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  42,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  45,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  48,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  51,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  61,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  83,  16, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  90,  13, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,   8,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  10,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  15,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  17,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  19,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  22,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  24,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  26,  53, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  27,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  28,  51, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  29,  50, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  30,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  36,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  40,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  55,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  94,  12, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,   5,  92, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,   7,  88, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,   9,  82, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  11,  78, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  13,  76, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  16,  69, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  18,  66, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  32,  48, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  33,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  38,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  45,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  48,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  51,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  61,  28, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126, 120,   4, "Gl" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  28,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  29,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  35,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  43,  40, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  55,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  60,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  88,  15, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  21,  63, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  23,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  25,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  27,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  31,  50, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  32,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  37,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  41,  42, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  45,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  48,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  51,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  13,  77, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  34,  48, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  35,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  39,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  43,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  55,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  60,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  12,  80, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  14,  76, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  15,  74, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  16,  72, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  17,  70, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  19,  68, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  28,  54, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  29,  53, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  30,  52, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  31,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  37,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  41,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  48,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  51,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  59,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  66,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  68,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  70,  25, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  72,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  74,  23, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  76,  22, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  78,  21, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  80,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  82,  19, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  84,  18, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,   5,  96, "BDK" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  33,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  34,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  39,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  43,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  46,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  55,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,   7,  92, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  13,  79, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  17,  71, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  18,  70, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  21,  66, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  23,  63, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  25,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  27,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  28,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  29,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  30,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  36,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  41,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  48,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  51,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  59,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  66,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  88,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,   9,  88, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  26,  58, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  32,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  33,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  38,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  46,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  55,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  65,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,   6,  96, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  15,  77, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  24,  61, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  35,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  36,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  40,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  44,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  59,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,   7,  94, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  13,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  17,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  22,  64, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  27,  58, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  28,  57, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  29,  56, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  30,  55, "DNX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  31,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  32,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  38,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  42,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  46,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  49,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  52,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  55,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  65,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  10,  88, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  11,  84, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  26,  60, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  34,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  35,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  40,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  44,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  59,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  64,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  75,  25, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  77,  24, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  79,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  81,  22, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  94,  16, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136, 104,  12, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,   5, 100, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  28,  58, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  29,  57, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  30,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  31,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  37,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  42,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  49,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  52,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  55,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  72,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  74,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  84,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,   9,  90, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  18,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  21,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  22,  66, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  24,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  27,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  33,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  34,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  39,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  40,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  47,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  59,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  64,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  71,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  87,  20, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,   7,  96, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  11,  86, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  25,  63, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  29,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  36,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  37,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  45,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  49,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  52,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  55,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  63,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  70,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  90,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,   6, 100, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  13,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  15,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  17,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  19,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  21,  69, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  23,  66, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  26,  62, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  28,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  31,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  32,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  33,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  39,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  43,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  47,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  59,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140, 105,  13, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,   9,  92, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  25,  64, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  35,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  36,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  41,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  45,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  52,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  55,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  63,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  70,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  94,  18, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141, 101,  15, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,   5, 104, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  11,  87, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  29,  60, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  30,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  31,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  32,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  38,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  39,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  43,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  47,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  50,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  59,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  69,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  34,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  35,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  41,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  45,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  52,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  55,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  63,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  81,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,   7, 100, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  21,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  23,  69, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  24,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  25,  66, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  27,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  29,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  30,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  31,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  37,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  38,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  43,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  50,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  59,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  69,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  78,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  80,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  84,  24, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  86,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  88,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  99,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,   6, 104, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  10,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  15,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  17,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  19,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  26,  65, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  28,  63, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  33,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  34,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  40,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  48,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  63,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  68,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  77,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145, 135,   5, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  11,  90, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  36,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  37,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  42,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  46,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  50,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  53,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  56,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  59,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  76,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  92,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,   5, 108, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  13,  89, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  28,  64, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  29,  63, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  30,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  31,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  32,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  33,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  39,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  40,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  44,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  48,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  63,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  68,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  75,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  95,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,   9,  98, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  20,  76, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  23,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  25,  69, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  35,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  36,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  42,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  46,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  53,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  56,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  59,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  67,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  74,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  31,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  32,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  38,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  39,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  44,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  48,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  51,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  63,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149, 106,  16, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,   7, 104, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  10,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  12,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  15,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  17,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  19,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  20,  77, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  21,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  24,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  27,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  28,  66, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  30,  64, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  34,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  35,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  41,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  46,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  53,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  56,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  59,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  67,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  74,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150, 100,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  37,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  38,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  43,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  51,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  63,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  73,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  88,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,   5, 112, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,   9, 101, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  13,  92, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  23,  75, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  25,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  27,  69, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  29,  66, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  31,  64, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  32,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  33,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  34,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  40,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  41,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  45,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  49,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  56,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  59,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  67,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  83,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  85,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  87,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  91,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  28,  68, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  36,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  37,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  43,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  47,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  51,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  54,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  63,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  73,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  82,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  94,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153, 105,  18, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  31,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  32,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  33,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  39,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  40,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  45,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  49,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  56,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  59,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  67,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  72,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  81,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  97,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,   8, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,   9, 103, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  10, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  12,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  13,  94, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  15,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  17,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  19,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  21,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  28,  69, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  35,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  36,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  42,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  47,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  54,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  63,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  80,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  24,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  25,  73, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  27,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  30,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  38,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  39,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  44,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  52,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  67,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  72,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  79,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156, 101,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  31,  67, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  33,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  34,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  35,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  41,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  42,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  46,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  50,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  54,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  57,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  60,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  63,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  71,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  78,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,   7, 110, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  37,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  38,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  44,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  48,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  52,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  67,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158, 105,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158, 112,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  31,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  32,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  33,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  34,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  40,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  41,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  46,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  50,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  57,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  60,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  63,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  71,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  78,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  10, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  12, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  15,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  17,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  19,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  21,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  23,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  29,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  36,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  37,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  43,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  44,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  48,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  52,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  55,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  67,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  77,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  88,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  90,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  92,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  94,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  96,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,   7, 112, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,   9, 108, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  13,  98, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  39,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  40,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  46,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  50,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  57,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  60,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  63,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  71,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  87,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  99,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,   5, 120, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,   6, 116, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  24,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  27,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  30,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  31,  70, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  33,  68, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  34,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  35,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  36,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  42,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  43,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  55,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  67,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  77,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  86,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162, 102,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  38,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  39,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  45,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  49,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  53,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  60,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  63,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  71,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  76,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  85,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  32,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  33,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  34,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  35,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  41,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  42,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  47,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  51,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  55,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  58,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  67,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  84,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164, 106,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164, 120,  16, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,   6, 118, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  10, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  12, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  17,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  19,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  21,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  23,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  25,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  28,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  31,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  37,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  38,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  44,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  45,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  49,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  53,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  60,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  63,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  71,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  76,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  83,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  15, 100, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  40,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  41,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  47,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  51,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  58,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  67,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  75,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  82,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  31,  73, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  35,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  36,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  37,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  43,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  44,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  49,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  53,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  56,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  71,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167, 111,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  22,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  24,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  25,  81, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  27,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  28,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  30,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  33,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  39,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  40,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  46,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  58,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  61,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  64,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  67,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  75,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  82,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  93,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  95,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  97,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  99,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,   7, 118, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  32,  73, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  35,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  36,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  42,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  43,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  48,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  52,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  56,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  71,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  81,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  92,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169, 102,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169, 104,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,   6, 122, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  10, 112, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  12, 108, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  13, 104, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  14, 102, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  16, 100, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  17,  98, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  31,  75, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  34,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  38,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  39,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  45,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  46,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  50,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  54,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  61,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  64,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  67,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  75,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  91,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170, 116,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,   9, 117, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  18,  96, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  41,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  42,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  48,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  52,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  56,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  59,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  71,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  81,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  88,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  90,  33, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171, 108,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,   5, 128, "Liz" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,   7, 119, "Ayd" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  35,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  36,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  37,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  38,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  44,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  45,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  50,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  54,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  61,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  64,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  67,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  75,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  80,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172, 125,  17, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  40,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  41,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  47,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  52,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  59,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  71,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  88,  35, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173, 112,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  21,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  24,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  27,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  30,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  33,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  35,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  36,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  37,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  43,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  44,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  49,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  57,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  64,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  67,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  75,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  80,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  87,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,   6, 126, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,   7, 121, "DG5" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  10, 114, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  14, 106, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  15, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  17, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  19,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  31,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  34,  75, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  39,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  40,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  46,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  47,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  51,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  55,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  59,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  62,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  71,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  79,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  86,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  11, 112, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  13, 108, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  16, 103, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  25,  87, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  42,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  43,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  49,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  53,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  57,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  64,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  67,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  75,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  98,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176, 100,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176, 102,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176, 104,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,   9, 119, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  34,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  35,  75, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  37,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  38,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  39,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  45,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  46,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  51,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  55,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  62,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  71,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  79,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  86,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  97,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177, 107,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  14, 108, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  41,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  42,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  48,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  53,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  57,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  60,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  67,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  75,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  85,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  94,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  96,  33, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178, 110,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,   5, 132, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,   9, 120, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  34,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  37,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  38,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  44,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  45,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  50,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  55,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  62,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  65,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  71,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  79,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  93,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179, 113,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179, 122,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,   6, 130, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  10, 118, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  15, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  16, 106, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  17, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  19, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  21,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  22,  93, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  24,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  25,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  27,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  30,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  31,  81, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  33,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  36,  76, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  40,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  41,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  47,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  48,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  52,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  60,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  75,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  85,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  92,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,   9, 121, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  35,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  43,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  44,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  50,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  54,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  58,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  65,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  68,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  71,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  79,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  84,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  91,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181, 117,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,   5, 134, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  12, 114, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  13, 112, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  37,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  38,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  39,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  40,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  46,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  47,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  52,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  56,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  60,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  63,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  75,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,   7, 128, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,   9, 122, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  10, 120, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  15, 110, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  34,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  42,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  43,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  49,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  50,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  54,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  58,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  65,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  68,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  71,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  79,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  84,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  91,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  13, 113, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  16, 109, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  37,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  38,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  39,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  45,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  46,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  52,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  56,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  63,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  75,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  83,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  90,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184, 105,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184, 107,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184, 122,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,   6, 134, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  12, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  17, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  19, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  21, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  41,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  42,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  48,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  49,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  54,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  58,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  61,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  68,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  71,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  79,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185, 100,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185, 102,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185, 104,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185, 110,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185, 112,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,   9, 124, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  11, 120, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  15, 112, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  24,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  27,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  30,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  31,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  33,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  36,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  44,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  45,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  51,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  63,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  66,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  75,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  83,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  90,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  99,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186, 115,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186, 175,   5, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,   8, 128, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  37,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  39,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  40,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  41,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  47,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  48,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  53,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  57,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  61,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  68,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  71,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  79,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  89,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  98,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  13, 116, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  16, 112, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  34,  83, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  43,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  44,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  50,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  51,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  55,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  59,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  66,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  75,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  83,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  88,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  97,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188, 119,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,   5, 140, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  37,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  38,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  39,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  40,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  46,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  47,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  53,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  57,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  61,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  64,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  71,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  79,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  96,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  12, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  14, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  17, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  19, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  21, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  23, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  42,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  43,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  49,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  50,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  55,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  59,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  66,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  69,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  75,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  83,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  88,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  95,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190, 123,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,   6, 138, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  45,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  46,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  52,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  57,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  64,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  79,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,   7, 136, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  13, 119, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  16, 115, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  24, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  27,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  30,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  33,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  36,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  37,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  39,  80, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  40,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  41,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  42,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  48,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  49,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  54,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  62,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  69,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  72,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  75,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  83,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  88,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  95,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192, 127,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  34,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  44,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  45,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  51,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  52,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  56,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  60,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  64,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  67,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  79,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  87,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  94,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 105,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 107,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 109,  33, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 111,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 113,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 115,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,   5, 144, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  38,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  39,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  40,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  41,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  47,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  48,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  54,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  58,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  62,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  69,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  72,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  75,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  83,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  93,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194, 104,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194, 118,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,   6, 141, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,   7, 137, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  12, 124, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  16, 117, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  18, 114, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  37,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  43,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  44,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  50,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  51,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  56,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  60,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  64,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  67,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  79,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  87,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195, 103,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195, 121,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  13, 122, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  15, 120, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  46,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  47,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  53,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  58,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  62,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  72,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  75,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  83,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  93,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196, 102,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196, 124,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  10, 132, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  37,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  41,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  42,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  43,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  49,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  50,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  55,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  60,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  67,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  70,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  79,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  87,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  92,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197, 101,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,   8, 134, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  21, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  24, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  27, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  30,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  33,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  34,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  36,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  39,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  45,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  46,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  52,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  53,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  57,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  65,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  72,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  75,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  83,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198, 100,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198, 128,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,   7, 140, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  11, 128, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  12, 126, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  14, 123, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  38,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  41,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  42,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  48,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  49,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  55,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  59,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  63,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  67,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  70,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  79,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  87,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  92,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  99,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,   5, 148, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  13, 125, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  16, 121, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  17, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  19, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  37,  87, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  40,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  44,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  45,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  51,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  52,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  57,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  61,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  65,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  75,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  83,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  98,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,   6, 145, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,   7, 141, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  47,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  48,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  54,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  55,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  59,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  63,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  70,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  73,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  79,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  82,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  87,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  92,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 110,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 112,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 114,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 116,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 118,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 120,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 133,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  11, 130, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  15, 124, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  41,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  42,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  43,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  44,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  50,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  51,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  57,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  61,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  68,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  91,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  98,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202, 109,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202, 123,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  12, 129, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  14, 126, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  46,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  47,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  48,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  53,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  54,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  59,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  63,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  66,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  70,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  73,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  76,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  79,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  82,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  87,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  97,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203, 108,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203, 126,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  21, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  24, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  27, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  30, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  33,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  36,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  39,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  40,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  41,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  42,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  43,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  50,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  56,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  68,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  91,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204, 107,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204, 138,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,   5, 152, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,   6, 148, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,   7, 144, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  10, 134, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  13, 129, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  16, 125, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  17, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  19, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  37,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  45,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  46,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  47,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  52,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  53,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  58,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  62,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  66,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  73,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  76,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  79,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  87,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  97,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205, 106,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205, 130,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  11, 133, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  41,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  49,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  50,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  55,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  56,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  60,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  64,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  68,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  71,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  83,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  86,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  91,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  96,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206, 105,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  12, 132, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  15, 128, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  40,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  43,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  44,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  45,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  52,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  58,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  62,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  66,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  73,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  76,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  79,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207, 104,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207, 134,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  14, 130, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  47,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  48,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  49,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  54,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  55,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  60,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  64,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  71,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  83,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  86,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  91,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  96,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208, 103,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  40,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  43,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  44,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  51,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  52,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  57,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  62,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  69,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  76,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  79,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 102,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 115,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 117,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 119,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 121,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209, 123,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,   6, 152, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,   7, 148, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,   9, 144, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  10, 138, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  11, 136, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  13, 133, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  16, 129, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  17, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  18, 121, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  19, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  21, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  24, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  27, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  30, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  33, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  36,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  37,  93, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  39,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  42,  88, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  46,  84, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  47,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  48,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  54,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  59,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  67,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  71,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  74,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  83,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  86,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  91,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  96,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210, 114,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210, 126,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210, 128,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,   5, 156, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  12, 135, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  41,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  50,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  51,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  56,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  57,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  61,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  65,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  69,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  76,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  79,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  90,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  95,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211, 102,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211, 113,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  15, 132, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  43,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  44,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  45,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  46,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  53,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  54,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  59,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  63,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  67,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  74,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  83,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  86,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 101,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 110,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 112,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 132,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  40,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  48,  84, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  49,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  50,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  56,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  61,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  65,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  69,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  72,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  90,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  95,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213, 109,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213, 135,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213, 144,  25, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,   7, 151, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  11, 139, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  13, 136, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  43,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  44,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  45,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  52,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  53,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  58,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  63,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  67,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  74,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  77,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  80,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  83,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  86,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214, 101,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214, 108,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,   8, 147, "Ayd" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  16, 133, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  17, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  19, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  21, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  47,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  48,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  49,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  55,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  56,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  60,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  65,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  72,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  90,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  95,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215, 100,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215, 139,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,   5, 160, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,   9, 145, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  10, 143, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  12, 139, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  24, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  27, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  30, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  33, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  36, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  39,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  42,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  51,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  52,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  58,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  62,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  70,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  77,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  80,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  83,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  86,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  94,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216, 108,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  15, 136, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  43,  91, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  45,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  46,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  47,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  54,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  55,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  60,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  64,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  68,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  72,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  75,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  90,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 100,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 107,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 122,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 124,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 126,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  11, 142, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  14, 138, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  40,  95, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  49,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  50,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  51,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  57,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  62,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  66,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  70,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  77,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  80,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  83,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  86,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  94,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 106,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 119,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 121,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 129,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 131,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 144,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,   5, 162, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,   7, 155, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  13, 140, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  43,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  44,  91, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  45,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  46,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  53,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  54,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  59,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  64,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  68,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  75,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  90,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219, 100,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219, 116,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219, 118,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219, 134,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,   6, 160, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,   8, 150, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,   9, 148, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  16, 137, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  17, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  19, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  21, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  23, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  48,  88, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  49,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  50,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  56,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  57,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  61,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  62,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  66,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  70,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  73,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  80,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  83,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  94,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  99,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220, 106,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220, 115,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220, 137,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  10, 147, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  12, 143, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  52,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  53,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  59,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  68,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  75,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  78,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  87,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  90,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221, 105,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221, 114,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  15, 140, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  24, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  27, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  30, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  33, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  36, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  39, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  42,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  43,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  45,  92, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  46,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  47,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  48,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  55,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  56,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  61,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  65,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  73,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  80,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  83,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  94,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  99,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222, 113,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222, 141,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,   9, 150, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  14, 142, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  40,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  50,  88, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  51,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  52,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  58,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  63,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  67,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  71,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  78,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  87,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  90,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223, 105,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223, 112,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,   8, 153, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  11, 147, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  44,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  45,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  46,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  47,  91, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  54,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  55,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  60,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  61,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  65,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  69,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  73,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  76,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  94,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  99,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224, 104,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224, 111,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224, 145,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  13, 145, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  19, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  21, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  23, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  25, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  43,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  49,  90, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  50,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  51,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  57,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  58,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  63,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  67,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  71,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  78,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  81,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  84,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  87,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  90,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  98,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225, 127,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225, 129,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225, 131,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,   5, 168, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,   6, 163, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,   7, 161, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  16, 142, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  17, 136, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  53,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  54,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  60,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  65,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  69,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  76,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  94,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 104,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 111,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 122,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 124,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 126,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 134,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 149,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,   9, 153, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  10, 152, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  12, 148, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  43,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  47,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  48,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  49,  91, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  50,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  56,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  57,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  62,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  67,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  74,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  81,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  84,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  87,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  90,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  98,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 103,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 110,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 121,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 137,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 139,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,   8, 156, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  11, 150, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  15, 145, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  24, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  27, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  30, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  33, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  36, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  39, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  40, 101, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  42, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  45,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  52,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  53,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  59,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  60,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  64,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  72,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  76,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  79,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  94,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228, 120,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  44,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  47,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  48,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  55,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  56,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  62,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  66,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  70,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  74,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  81,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  84,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  87,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  90,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  98,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229, 103,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229, 110,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229, 119,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229, 143,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,   8, 157, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  14, 148, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  43,  99, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  46,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  50,  92, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  51,  91, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  52,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  58,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  59,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  64,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  68,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  72,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  79,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  94,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230, 109,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230, 118,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230, 146,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  54,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  55,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  61,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  66,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  70,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  74,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  77,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  84,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  87,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  90,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  98,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231, 103,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231, 117,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,   6, 168, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  47,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  48,  95, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  49,  94, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  50,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  51,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  57,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  58,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  63,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  68,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  72,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  79,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  82,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  94,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232, 109,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232, 116,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232, 150,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  12, 153, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  53,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  54,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  60,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  61,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  65,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  70,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  77,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  84,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  87,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  98,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 103,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 108,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 115,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 134,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,   7, 168, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  11, 155, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  21, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  24, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  27, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  30, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  33, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  36, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  39, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  42, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  45, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  46,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  47,  97, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  48,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  49,  95, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  56,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  57,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  63,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  67,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  75,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  82,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  91,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  94,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 102,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 127,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 129,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 131,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 133,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 137,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 139,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  17, 140, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  19, 136, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  43, 102, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  51,  94, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  52,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  53,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  65,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  69,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  73,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  77,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  80,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  87,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  98,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235, 108,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235, 115,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235, 126,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235, 142,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235, 155,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,   5, 176, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  47,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  55,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  56,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  67,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  71,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  75,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  82,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  85,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  91,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  94,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236, 102,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236, 107,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236, 114,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236, 125,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236, 145,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,   6, 172, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,   7, 170, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  46, 100, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  49,  97, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  50,  96, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  51,  95, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  52,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  58,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  59,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  69,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  73,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  80,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  98,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237, 124,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237, 148,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  54,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  55,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  71,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  75,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  78,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  85,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  88,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  91,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  94,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 102,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 107,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 114,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 123,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 160,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  46, 101, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  49,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  50,  97, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  57,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  58,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  73,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  80,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  83,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  98,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 113,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 122,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 152,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  10, 164, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  17, 144, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  19, 140, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  21, 136, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  24, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  27, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  30, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  33, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  36, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  39, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  42, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  43, 105, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  45, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  48, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  52,  96, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  53,  95, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  54,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  60,  89, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  61,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  78,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  85,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  88,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  91,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  94,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240, 102,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240, 107,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240, 121,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,   8, 166, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  47, 101, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  56,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  57,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  76,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  80,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  83,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  98,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241, 113,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241, 120,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241, 156,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,   5, 180, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  49, 100, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  50,  99, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  51,  98, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  52,  97, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  53,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  59,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  60,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  78,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  88,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  91,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  94,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 102,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 107,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 112,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 119,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 132,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 134,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 136,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 138,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 140,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 142,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242, 144,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  46, 104, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  55,  95, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  56,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  62,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  83,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  86,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  98,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 106,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 131,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 147,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  10, 166, "GW1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  49, 101, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  50, 100, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  51,  99, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  58,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  59,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  81,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  88,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244,  91,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244, 102,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244, 112,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244, 119,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244, 130,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 244, 150,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  19, 144, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  21, 140, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  53,  98, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  54,  97, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  55,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  83,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  86,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  95,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245,  98,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245, 106,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245, 111,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245, 118,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 245, 129,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  17, 148, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  24, 136, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  27, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  30, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  33, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  36, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  39, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  42, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  45, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  48, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  57,  95, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  58,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246,  91,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246, 102,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246, 126,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246, 128,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 246, 154,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,   5, 184, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  49, 103, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  51, 101, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  52, 100, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  53,  99, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  54,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  60,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  61,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  86,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  89,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  95,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247,  98,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 106,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 111,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 118,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 125,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 157,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 247, 166,  29, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248,  46, 107, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248,  56,  97, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248,  57,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248,  84,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248, 102,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 248, 117,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  49, 104, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  50, 103, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  51, 102, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  52, 101, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  59,  95, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  60,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  82,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  86,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  89,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  92,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  95,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249,  98,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249, 106,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249, 111,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249, 125,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 249, 161,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,   6, 184, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  54, 100, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  55,  99, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  56,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  62,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  63,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250,  84,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 102,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 110,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 117,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 124,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 137,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 139,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 141,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 143,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 145,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 250, 147,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  17, 149, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  58,  97, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  59,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  89,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  92,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  95,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251,  98,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251, 106,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251, 116,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251, 123,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251, 136,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 251, 152,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  18, 148, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  21, 144, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  22, 141, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  24, 140, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  27, 136, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  30, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  33, 128, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  36, 124, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  39, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  42, 116, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  45, 112, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  48, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  49, 106, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  51, 104, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  61,  95, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  62,  94, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  82,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  83,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  84,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252,  87,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252, 102,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252, 110,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252, 135,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 252, 166,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  46, 110, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  57,  99, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  58,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  64,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  89,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  92,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  95,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253,  98,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253, 106,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253, 116,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253, 123,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253, 132,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 253, 134,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  43, 114, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  47, 109, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  50, 106, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  51, 105, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  60,  97, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  61,  96, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  83,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254,  87,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254, 102,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254, 110,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254, 115,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254, 122,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 254, 131,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  17, 152, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  19, 148, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  40, 118, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  44, 113, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  49, 108, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  85,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  92,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  95,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255,  98,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255, 106,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255, 121,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 255, 130,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,   5, 192, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,   7, 188, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,   8, 179, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  11, 176, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  15, 172, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  16, 171, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  18, 150, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  20, 147, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  22, 144, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  24, 141, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  26, 138, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  28, 135, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  32, 129, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  35, 126, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  37, 123, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  41, 117, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  43, 115, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  46, 112, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  47, 110, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  48, 109, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  50, 107, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  51, 106, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  52, 105, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  54, 104, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  56, 103, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  57, 101, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  59,  99, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  60,  98, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  61,  97, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  62,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  64,  95, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  65,  94, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  66,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  68,  92, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  72,  91, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  76,  88, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  80,  87, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  81,  86, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  82,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  83,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  84,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  87,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  88,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  90,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  91,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  94,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256,  97,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 100,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 102,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 103,  66, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 105,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 108,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 110,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 111,  61, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 113,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 115,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 116,  58, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 118,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 120,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 123,  54, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 125,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 127,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 129,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 132,  49, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 134,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 136,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 138,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 140,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 142,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 144,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 146,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 148,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 150,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 152,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 155,  38, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 156,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 159,  36, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 161,  35, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 163,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 165,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 167,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 169,  31, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 173,  30, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 174,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 177,  28, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 181,  27, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 185,  26, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 189,  24, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 193,  23, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 197,  22, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 201,  20, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 205,  19, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 207,  18, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 208,  17, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 211,  16, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 215,  15, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 219,  14, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 223,  12, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 227,  11, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 231,  10, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 232,   9, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 235,   8, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 239,   7, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 243,   6, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 256, 251,   3, "Ham" ) then
	GUAVA_TEMP_VAR := false;
fi;
