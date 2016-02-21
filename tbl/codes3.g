#############################################################################
##  
#A  codes3.g                GUAVA library                   Reinald Baart
#A                                                       & Jasper Cramwinckel
#A                                                          & Erik Roijackers
##  
#Y  Copyright (C)  1994,  Vakgroep Algemene Wiskunde,  T.U. Delft,  Nederland
## 
#H  CJ, 17 May 2006
#H  Updated lower- and upper-bounds of minimum distance for GF(2),
#H  GF(3) and GF(4) codes. (Brouwer's table as of 11 May 2006)
#H 
#H  $Log: codes3.g,v $
#H  Revision 1.1.1.1  1998/03/19 17:31:39  lea
#H  Initial version of GUAVA for GAP4.  Development still under way.
#H  Lea Ruscio 19/3/98
#H
#H 
#H  Revision 1.2  1997/01/20 15:34:15  werner
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

if YouWantThisCode(  12,   6,   6, "QR" ) then
    GUAVA_TEMP_VAR := [ExtendedTernaryGolayCode,[]];
fi;
if YouWantThisCode(  14,   7,   6, "QR" ) then
    GUAVA_TEMP_VAR := [ExtendedCode, [[QRCode, [13, 3]]]];
fi;
if YouWantThisCode(  14,   8,   5, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  15,   6,   7, "Li1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  16,   5,   9, "HN" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  23,   7,  12, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  24,  12,   9, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  25,  10,  10, "BE3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  27,  16,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,   8,  15, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,  14,   9, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  28,  20,   6, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  29,   5,  18, "vE0" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  29,  16,   8, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  30,  10,  13, "GuB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  31,   7,  17, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  31,   9,  15, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  32,   4,  21, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  33,  10,  15, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  34,   5,  21, "vE0" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  34,   8,  18, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  34,  22,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  35,   7,  19, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  35,  21,   8, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,   6,  21, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,   9,  18, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  36,  18,  12, "Ple" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  37,   7,  20, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  38,   5,  24, "BB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  40,  10,  19, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  40,  12,  18, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  40,  20,  12, "Be" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  40,  24,   9, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  41,   8,  22, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  41,   9,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  41,  33,   5, "BCH" ) then
	GUAVA_TEMP_VAR := [BCHCode, [41, 2, 3]];
fi;
if YouWantThisCode(  42,   7,  24, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  42,  29,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  43,  25,   9, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  44,   6,  27, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  44,  11,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  44,  29,   8, "BE3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  45,   9,  24, "KP" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,   7,  26, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  46,  12,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  47,   5,  30, "vE1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,  10,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,  11,  22, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  48,  24,  15, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,   5,  31, "BB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,   6,  30, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,   7,  28, "GuB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,   8,  27, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,  13,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  49,  14,  20, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,   7,  30, "CG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,  10,  27, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  52,  26,  15, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  53,  16,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  53,  17,  20, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  53,  39,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  54,   8,  30, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  54,   9,  28, "GB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  54,  14,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,   6,  36, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,   7,  33, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,   8,  31, "Gu2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,  12,  27, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,  18,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  56,  50,   4, "Hi1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,  15,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,  16,  23, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  57,  20,  20, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  58,  10,  30, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  59,  16,  24, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,   7,  36, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,  14,  27, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  60,  30,  18, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  61,   5,  39, "vE0" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  61,  15,  26, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  61,  17,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  61,  21,  21, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  61,  41,  10, "Glo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  62,  11,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  62,  12,  30, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  62,  33,  13, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  63,   6,  39, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,   8,  37, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  32,  18, "Be" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  64,  38,  12, "D1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,   5,  42, "HN" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,   7,  39, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,   9,  36, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  65,  17,  27, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  66,  12,  33, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  66,  21,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  67,   6,  42, "Ha" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  16,  30, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  18,  27, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  23,  23, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  68,  45,  11, "Glo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,   5,  45, "vEH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  69,  11,  36, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   7,  42, "Gu2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,   9,  39, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  70,  23,  24, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  71,  12,  36, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  71,  17,  30, "ASR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,   6,  45, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,   7,  43, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,   8,  42, "Gu2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  72,  36,  18, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,   5,  48, "BB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  74,  37,  18, "QR" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,   6,  48, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  76,  38,  18, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  18,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  80,  24,  30, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,   7,  51, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,   9,  48, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  11,  45, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  20,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  25,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  50,  14, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  81,  56,  11, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  82,  16,  42, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  82,  66,   8, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  83,  56,  12, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  19,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  20,  34, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  25,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  27,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  84,  42,  21, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,   7,  54, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  13,  45, "BEx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  22,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  23,  31, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  50,  15, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  64,   9, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  70,   7, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  85,  74,   6, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,   9,  50, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  11,  47, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  15,  44, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  46,  17, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  54,  14, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  55,  13, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  60,  11, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  86,  77,   5, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,   5,  57, "HHY" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  18,  38, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  20,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  23,  32, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  58,  12, "X6" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  87,  70,   8, "BE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  15,  45, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  16,  44, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  27,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  30,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  31,  25, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  44,  21, "GaO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  49,  16, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  88,  63,  10, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  12,  47, "BE3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  23,  33, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  53,  15, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  56,  14, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  89,  67,   9, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,   6,  57, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  14,  46, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  16,  45, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  20,  37, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  22,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  49,  17, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  50,  16, "X6" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  60,  12, "X6" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  63,  11, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  90,  71,   8, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,   5,  60, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,   9,  54, "dB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  11,  51, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  12,  48, "BE3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  19,  38, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  91,  24,  33, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,   7,  57, "X3a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  14,  47, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  15,  46, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  18,  42, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  30,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  33,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  55,  15, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  66,  10, "Ed2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  69,   9, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  92,  76,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  51,  17, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  62,  12, "X6" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  93,  65,  11, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,   6,  60, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  14,  48, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  15,  47, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  23,  36, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  53,  16, "X6" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  94,  56,  15, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  12,  51, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  20,  40, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  95,  83,   6, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,   7,  60, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,   8,  57, "GB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  15,  48, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  16,  47, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  19,  41, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  36,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  48,  24, "ACG" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  96,  53,  17, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  11,  53, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  13,  51, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  21,  39, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  22,  38, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  97,  68,  11, "Ed2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,   6,  63, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  16,  48, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  17,  45, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  19,  42, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  98,  23,  37, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,   9,  57, "GB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  11,  54, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  50,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  55,  17, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  59,  15, "X6u" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode(  99,  75,   9, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,   5,  66, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,   7,  63, "EB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,   8,  60, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  10,  55, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  18,  45, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  24,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  36,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  54,  18, "D1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 100,  58,  16, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  12,  53, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  15,  51, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  19,  43, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  50,  20, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 101,  56,  17, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 102,  49,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  10,  57, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  16,  51, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  34,  34, "Glo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  53,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  69,  14, "Glo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 103,  90,   6, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,   5,  69, "Bel" ) then
    GUAVA_TEMP_VAR := [BCHCode, [104,0,66,3]];
fi;
if YouWantThisCode( 104,   7,  66, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,   9,  60, "DGM" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  11,  56, "BET" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  13,  54, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  18,  48, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  20,  43, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  24,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  27,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  35,  33, "Glo" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  36,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  39,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  43,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 104,  49,  22, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,   8,  63, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  14,  53, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  19,  45, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  22,  42, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  23,  41, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 105,  51,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 106,  10,  59, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  14,  54, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  15,  53, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 107,  17,  49, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,   7,  69, "EB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,   9,  63, "GB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  11,  58, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  12,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  16,  52, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  20,  45, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  27,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  30,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  36,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  39,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  46,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  49,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  52,  22, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  56,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  57,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  61,  18, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  65,  16, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  71,  14, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 108,  91,   7, "EB3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  15,  54, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  24,  41, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 109,  82,  10, "LX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,   8,  66, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  10,  62, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  21,  45, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  23,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 110,  92,   7, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  16,  54, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 111,  18,  51, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,   7,  72, "EB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  12,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  13,  58, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  14,  57, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  19,  50, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  22,  45, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  24,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  25,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  27,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  30,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  33,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  36,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  39,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  42,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  46,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  49,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  52,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  55,  22, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  59,  20, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  71,  15, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 112,  74,  14, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,   5,  75, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,   8,  68, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  23,  43, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  61,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  65,  18, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 113,  80,  12, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,   6,  73, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  34,  35, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  37,  33, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  43,  30, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  47,  27, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  56,  22, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  72,  15, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 114,  75,  14, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,   8,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  11,  63, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  24,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  25,  42, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  26,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  28,  40, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  31,  38, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  40,  32, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  44,  29, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  50,  26, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  51,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  53,  24, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 115,  81,  12, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  23,  45, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 116,  47,  28, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  25,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  44,  30, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 117,  49,  27, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  22,  48, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  24,  45, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  27,  42, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  30,  40, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  33,  38, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  36,  36, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  39,  34, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  42,  32, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  46,  29, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  48,  28, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  52,  26, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  53,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  75,  15, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 118,  80,  13, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  25,  44, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  26,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  34,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 119,  40,  33, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,   6,  78, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,   7,  75, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  12,  66, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  28,  42, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  44,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  46,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  51,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  53,  26, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 120,  57,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,   5,  81, "sim" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  10,  72, "dB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  15,  63, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  20,  57, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  23,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  24,  46, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  25,  45, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  26,  44, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  27,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  34,  38, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  40,  34, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  43,  32, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  48,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  50,  28, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  61,  23, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  66,  21, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121,  81,  14, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 121, 116,   3, "Ham" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  22,  51, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  29,  42, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  32,  41, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  33,  39, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  36,  37, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  39,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  42,  33, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  56,  25, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  67,  20, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  76,  17, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122,  92,  11, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122, 102,   8, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 122, 112,   5, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  16,  63, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  21,  57, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  25,  46, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  26,  45, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  27,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 123,  46,  31, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,   6,  81, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,   8,  75, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  24,  48, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  29,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  36,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  39,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  42,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  54,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 124,  56,  26, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  12,  68, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  26,  46, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  27,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  31,  42, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  33,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  35,  39, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  38,  37, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  41,  35, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  44,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  50,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  51,  29, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  53,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  61,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  68,  21, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  79,  16, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  81,  15, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 125,  97,  10, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,   9,  73, "GB1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  11,  72, "Br2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  13,  66, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  25,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  29,  44, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  72,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  78,  17, "BE3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126,  91,  12, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 126, 101,   9, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,   7,  81, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  12,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  15,  65, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  26,  47, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  27,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  31,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  34,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  66,  23, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  71,  20, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  76,  18, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 127,  88,  13, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,   8,  78, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  24,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  29,  45, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  33,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  36,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  37,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  39,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  40,  37, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  42,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  43,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  45,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  49,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  57,  27, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 128,  61,  25, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  16,  65, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  26,  48, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  27,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  31,  44, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  35,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  47,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  67,  23, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 129,  71,  21, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,   6,  84, "Bo1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,   9,  76, "DGM" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  10,  74, "DG4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  24,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  25,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  29,  46, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  33,  43, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  54,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  57,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  61,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  65,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  69,  22, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 130,  81,  17, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  20,  63, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  27,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  31,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 131,  84,  16, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  10,  75, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  15,  69, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  21,  60, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  23,  57, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  24,  52, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  25,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  26,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  29,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  33,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  36,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  37,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  39,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  42,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  45,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  46,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  52,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  69,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 132,  80,  18, "Ed" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,   7,  84, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,   8,  81, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  31,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  35,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  61,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  65,  25, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  74,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 133,  76,  20, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,   6,  87, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  11,  75, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  16,  69, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  25,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  26,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  27,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  33,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 134,  79,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,   9,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  13,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  21,  61, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  22,  60, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  24,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  30,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  31,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  58,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  65,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 135,  69,  24, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,   7,  86, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  25,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  26,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  27,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  29,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  33,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  34,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  36,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  37,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  39,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  42,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  45,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  48,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  49,  35, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  52,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  55,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  72,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  74,  22, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 136,  86,  17, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  31,  48, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 137,  32,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,   6,  90, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  11,  78, "Bou" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  15,  71, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  18,  66, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  24,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  25,  54, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  26,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  27,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  28,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  29,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 138,  78,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  31,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  70,  25, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  86,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 139,  91,  16, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,   8,  87, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,   9,  82, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  15,  72, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  25,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  26,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  27,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  28,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  29,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  33,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  34,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  36,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  39,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  42,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  45,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  48,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  55,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  58,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  59,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  62,  30, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  66,  28, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  69,  26, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  73,  24, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  82,  20, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140,  95,  15, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 140, 111,  10, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,   7,  90, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  10,  81, "X" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  16,  71, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  19,  66, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  20,  65, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  22,  63, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  23,  60, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  31,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  32,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 141,  76,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  14,  73, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  18,  69, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  25,  56, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  26,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  29,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  63,  30, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  67,  28, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  79,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 142,  86,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,   9,  84, "DGM" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  16,  72, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  28,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 143,  31,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,   6,  93, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,   8,  90, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  13,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  15,  73, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  24,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  26,  56, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  27,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  33,  50, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  34,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  36,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  39,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  42,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  45,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  48,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  51,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  55,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  58,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  61,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  66,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144,  70,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 144, 130,   6, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  14,  75, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  25,  58, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  29,  54, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  31,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  32,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  63,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  73,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  75,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 145,  84,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,   9,  85, "Zwa" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  12,  82, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  15,  74, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  21,  64, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  26,  57, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  27,  56, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  28,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  66,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  70,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 146,  78,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,   7,  93, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  16,  73, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  30,  54, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  31,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 147,  93,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,   6,  96, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  14,  77, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  15,  75, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  18,  72, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  27,  57, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  28,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  29,  55, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  33,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  34,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  36,  50, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  39,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  42,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  45,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  48,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  51,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  58,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  61,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  64,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  82,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 148,  89,  20, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  20,  71, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  31,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  32,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  70,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149,  85,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 149, 100,  16, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,   8,  93, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,   9,  88, "GB4" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  10,  87, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  11,  84, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  14,  78, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  22,  66, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  26,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  29,  56, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  67,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  69,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  73,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 150,  75,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  31,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  78,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  80,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 151,  94,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,   6,  99, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  18,  73, "Da0" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  19,  72, "Da0" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  33,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  34,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  36,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  39,  50, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  42,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  45,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  48,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  51,  42, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  54,  40, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  58,  38, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  61,  36, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  64,  34, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 152,  67,  32, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  11,  86, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  13,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  16,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  28,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  40,  49, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  43,  47, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  46,  45, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  49,  43, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  52,  41, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  59,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  84,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 153,  91,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,   5, 102, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,   7,  99, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  33,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  34,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  37,  52, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  38,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  55,  40, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  56,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  63,  35, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 154,  65,  34, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  36,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  40,  50, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  43,  48, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  46,  46, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  49,  44, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  52,  42, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  59,  38, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  71,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  73,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  75,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 155,  88,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,   6, 102, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,   8,  96, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  12,  87, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  17,  78, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  33,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  34,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  38,  52, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  42,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  45,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  48,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  51,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  54,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  56,  40, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  61,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  63,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  68,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  70,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  78,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  80,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 156,  96,  20, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  22,  72, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  25,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  36,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  40,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  83,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157,  92,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 157, 102,  18, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,   5, 105, "Bel" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  33,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  34,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  38,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  42,  50, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  45,  48, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  48,  46, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  51,  44, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  54,  42, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  59,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  61,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  66,  35, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  68,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 158,  86,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  31,  62, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  36,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  40,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  44,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  47,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  50,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  53,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  58,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 159,  65,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,   6, 105, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,   8,  99, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  10,  96, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  12,  90, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  14,  87, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  16,  84, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  19,  78, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  21,  75, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  33,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  34,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  38,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  42,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  57,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  64,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  75,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 160,  90,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,   7, 102, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  20,  77, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  23,  73, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  25,  72, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  36,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  40,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  44,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  47,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  50,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  53,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  56,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  63,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  72,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  74,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  78,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  80,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161,  98,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 161, 103,  19, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,   9,  99, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  11,  93, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  13,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  26,  71, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  32,  60, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  33,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  34,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  38,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  42,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  46,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  49,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  52,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  62,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  69,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  71,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  83,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 162,  85,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  24,  73, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  36,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  40,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  44,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  56,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  61,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  68,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 163,  95,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,   6, 108, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,   8, 102, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  12,  91, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  18,  84, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  20,  78, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  33,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  34,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  38,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  42,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  46,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  49,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  52,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  55,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  60,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  67,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 164,  89,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  14,  89, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  16,  86, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  19,  81, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  22,  75, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  28,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  29,  67, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  36,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  40,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  44,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  48,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  51,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  59,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  66,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 165,  92,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  38,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  42,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  46,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  55,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  65,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  76,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  78,  32, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166,  80,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 166, 100,  22, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  12,  93, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  14,  90, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  28,  70, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  36,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  40,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  44,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  48,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  51,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  54,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  59,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  64,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  73,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  75,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  83,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 167,  85,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  11,  96, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  23,  74, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  26,  73, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  30,  67, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  38,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  42,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  46,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  58,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  63,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  70,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  72,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  88,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168,  97,  24, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 168, 153,   6, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  22,  78, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  35,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  36,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  40,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  41,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  44,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  48,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  51,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  54,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  57,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  62,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  69,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 169,  91,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,   6, 111, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,   9, 103, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  10,  99, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  11,  97, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  17,  87, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  21,  79, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  28,  72, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  29,  71, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  31,  67, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  38,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  46,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  50,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  53,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170,  68,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 170, 106,  21, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  16,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  19,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  20,  83, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  34,  65, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  35,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  36,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  40,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  41,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  44,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  48,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  57,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  62,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  67,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171,  95,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171, 102,  23, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 171, 112,  19, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  13,  96, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  14,  93, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  18,  87, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  28,  73, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  30,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  38,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  43,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  46,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  50,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  53,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  56,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  61,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  66,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  77,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  79,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  81,  33, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  83,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 172,  85,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,   8, 108, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  15,  91, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  32,  66, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  35,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  36,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  40,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  41,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  48,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  60,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  65,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  74,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  76,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  88,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  90,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 173,  99,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,   6, 114, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  11, 100, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  29,  72, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  38,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  43,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  46,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  50,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  53,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  56,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 174,  73,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,   9, 106, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  10, 103, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  36,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  40,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  41,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  45,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  48,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  52,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  60,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  65,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  70,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  72,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175,  94,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 175, 108,  22, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,   7, 112, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  11, 101, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  17,  90, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  19,  87, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  23,  81, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  38,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  43,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  50,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  56,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  59,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  64,  44, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  69,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176,  97,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 176, 104,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  21,  84, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  36,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  40,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  41,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  45,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  48,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  52,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  55,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  63,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  68,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  81,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  83,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 177,  85,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,   8, 110, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  10, 105, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  38,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  43,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  47,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  50,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  59,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  78,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  80,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  88,  32, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178,  90,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 178, 101,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,   6, 117, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,   9, 108, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  22,  84, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  32,  69, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  35,  68, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  36,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  40,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  41,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  45,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  52,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  55,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  58,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  63,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  68,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  75,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  77,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179,  93,  30, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179, 109,  23, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 179, 114,  21, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,   8, 111, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  16,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  24,  81, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  26,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  27,  75, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  31,  72, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  38,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  43,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  47,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  50,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  54,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  62,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  67,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  74,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 180,  96,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  28,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  36,  66, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  40,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  41,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  45,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  49,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  52,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  58,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  61,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  66,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181,  73,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 181, 106,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,   7, 117, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  10, 108, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  12, 105, "ARS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  13, 102, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  15,  99, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  27,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  32,  71, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  34,  69, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  38,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  43,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  47,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  54,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  57,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182,  72,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 182, 100,  28, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  36,  67, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  40,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  41,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  45,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  49,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  52,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  61,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  71,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  82,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  84,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  86,  35, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  88,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183,  90,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 183, 103,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,   6, 120, "Gu" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,   8, 114, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,   9, 110, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  20,  93, "XX" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  21,  89, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  23,  84, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  32,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  38,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  43,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  47,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  51,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  54,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  57,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  60,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  65,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  67,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  70,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  79,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  81,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184,  95,  31, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184, 111,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 184, 116,  22, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  11, 107, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  27,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  40,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  41,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  45,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  49,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  64,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  69,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 185,  78,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  33,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  35,  71, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  37,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  38,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  43,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  47,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  51,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  54,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  57,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  60,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  75,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  77,  41, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186,  99,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 186, 108,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  31,  76, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  40,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  41,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  45,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  49,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  64,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187,  74,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 187, 102,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,   7, 120, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  10, 111, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  11, 109, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  34,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  37,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  38,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  43,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  47,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  51,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  54,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  57,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  60,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  63,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  68,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  70,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  73,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  86,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  88,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 188,  90,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,   9, 114, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  12, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  16, 102, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  19,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  22,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  26,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  27,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  31,  77, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  33,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  40,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  41,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  45,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  49,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  53,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  56,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  59,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  72,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  83,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  85,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  93,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189,  95,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189, 106,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 189, 113,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  35,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  37,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  38,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  43,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  47,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  51,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  63,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  80,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 190,  82,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,   6, 126, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  11, 111, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  23,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  33,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  34,  73, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  40,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  41,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  45,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  49,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  67,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191,  79,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 191, 110,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,   7, 123, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,   8, 120, "GO2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  10, 114, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  13, 108, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  20,  95, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  25,  85, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  36,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  37,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  38,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  43,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  47,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  51,  60, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  54,  58, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  55,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  57,  56, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  58,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  60,  54, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  63,  52, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  66,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  70,  48, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  71,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  73,  46, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 192,  78,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,   9, 116, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  12, 110, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  32,  79, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  33,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  34,  74, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  40,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  41,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  45,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  49,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  53,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  62,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  65,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193,  77,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 105,  30, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 193, 119,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  20,  96, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  36,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  37,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  38,  71, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  43,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  47,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  51,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  71,  48, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  76,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  87,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  89,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  91,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  93,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194,  95,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194, 108,  29, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194, 115,  26, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 194, 125,  22, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  11, 114, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  27,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  33,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  34,  75, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  40,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  41,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  45,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  49,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  53,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  56,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  59,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  62,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  65,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  70,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  75,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  84,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  86,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195,  98,  34, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 195, 100,  33, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,   7, 126, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  10, 116, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  31,  82, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  32,  80, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  36,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  37,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  38,  72, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  43,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  47,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  51,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  55,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  58,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  61,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  64,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  69,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  74,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196,  83,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 196, 112,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  34,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  40,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  41,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  45,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  49,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  53,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  68,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  80,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 197,  82,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,   6, 129, "Gu1" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,   9, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  12, 114, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  16, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  19, 102, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  20,  99, "X6a" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  22,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  25,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  29,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  33,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  36,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  37,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  38,  73, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  43,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  47,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  51,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  55,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  58,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  61,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  64,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  74,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198,  79,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 198, 121,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  11, 117, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  40,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  41,  71, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  45,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  49,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  53,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  57,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  60,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  63,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  68,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  73,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  78,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  91,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199,  93,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 199, 117,  27, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,   8, 126, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  10, 119, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  26,  90, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  27,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  34,  78, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  35,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  36,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  37,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  43,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  47,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  51,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  55,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  67,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  72,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  77,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  88,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  90,  40, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  96,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200,  98,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 200, 100,  35, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,   7, 129, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  11, 118, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  39,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  40,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  45,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  49,  66, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  53,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  57,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  60,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  63,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  71,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  85,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201,  87,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 201, 103,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,   6, 132, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,   9, 122, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  12, 116, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  13, 114, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  33,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  35,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  36,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  37,  76, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  42,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  43,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  47,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  48,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  51,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  55,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  67,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  77,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202,  84,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202, 115,  29, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 202, 127,  24, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  32,  85, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  39,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  40,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  45,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  50,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  53,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  57,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  60,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  63,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  66,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  71,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  76,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203,  83,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 203, 123,  26, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,   7, 131, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  34,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  35,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  36,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  37,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  42,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  43,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  47,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  48,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  55,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  59,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  62,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  70,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  75,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  80,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204,  82,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 204, 119,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,   8, 128, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  11, 121, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  39,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  40,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  45,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  50,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  53,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  57,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  66,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  69,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  74,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  92,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  94,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  96,  39, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205,  98,  38, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 205, 100,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,   6, 135, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  35,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  36,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  37,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  42,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  43,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  47,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  48,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  52,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  55,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  59,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  62,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  65,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  80,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  89,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206,  91,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 206, 103,  36, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  12, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  16, 114, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  19, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  22, 102, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  25,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  29,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  33,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  34,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  39,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  40,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  45,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  50,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  57,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  69,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  74,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  79,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207,  88,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207, 108,  34, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 207, 129,  25, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  10, 126, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  14, 117, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  36,  80, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  42,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  43,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  47,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  48,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  52,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  55,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  59,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  62,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  65,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  68,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  73,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  78,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  85,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208,  87,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 208, 125,  27, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,   7, 135, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  11, 124, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  20, 105, "DaH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  35,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  38,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  39,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  40,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  45,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  50,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  54,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  57,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  61,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  64,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  72,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  77,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 209,  84,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,   8, 132, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  34,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  42,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  43,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  47,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  48,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  52,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  59,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  68,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  83,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  96,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 210,  98,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,   6, 138, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,   9, 128, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  12, 122, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  33,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  35,  83, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  36,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  38,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  39,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  40,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  45,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  50,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  54,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  57,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  61,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  64,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  67,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  72,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  77,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  82,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  93,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211,  95,  42, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211, 101,  39, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211, 103,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 211, 105,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  13, 120, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  14, 119, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  34,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  42,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  43,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  47,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  48,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  52,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  56,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  59,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  71,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  76,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  81,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  90,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212,  92,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 108,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 212, 126,  28, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  11, 127, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  35,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  36,  83, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  37,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  38,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  39,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  40,  79, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  45,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  50,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  54,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  61,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  64,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  67,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  75,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  80,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 213,  89,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  10, 129, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  34,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  42,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  43,  77, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  47,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  48,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  52,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  56,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  59,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  63,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  71,  57, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 214,  88,  47, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  38,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  39,  81, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  45,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  50,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  54,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  58,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  61,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  67,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  70,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  75,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  80,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  85,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 215,  87,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,   7, 139, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,   8, 135, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,   9, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  12, 126, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  16, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  19, 114, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  22, 108, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  33,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  35,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  37,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  41,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  42,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  43,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  47,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  48,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  52,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  56,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  63,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  66,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  74,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  79,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  84,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  97,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216,  99,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216, 101,  41, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 216, 103,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  34,  88, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  39,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  45,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  50,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  54,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  58,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  61,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  70,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  73,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  78,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  83,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  94,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217,  96,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 108,  38, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 110,  37, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 133,  27, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 217, 138,  25, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  10, 132, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  11, 131, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  35,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  36,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  38,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  41,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  42,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  47,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  48,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  52,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  56,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  60,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  63,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  66,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  69,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  91,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218,  93,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 218, 113,  36, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,   6, 144, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  34,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  44,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  45,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  50,  74, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  54,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  58,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  73,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  78,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  83,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 219,  90,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,   8, 138, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  12, 128, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  15, 122, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  33,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  35,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  36,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  37,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  39,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  41,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  42,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  47,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  48,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  52,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  56,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  60,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  63,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  66,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  69,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  72,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  77,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  82,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 220,  89,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  44,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  45,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  50,  75, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  54,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  58,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  62,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  65,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  68,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  76,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  81,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221,  88,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221, 101,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 221, 103,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,   7, 144, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  10, 135, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  11, 134, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  13, 126, "BY" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  34,  91, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  36,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  37,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  38,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  40,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  41,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  42,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  47,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  48,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  52,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  56,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  60,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  72,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  87,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222,  98,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222, 100,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 222, 108,  40, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  33,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  35,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  44,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  45,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  50,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  54,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  58,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  62,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  65,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  68,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  71,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  76,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  81,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  86,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  95,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 223,  97,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,   6, 147, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,   8, 141, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  34,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  37,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  38,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  39,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  40,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  47,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  48,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  52,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  56,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  60,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  75,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  80,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  85,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224,  94,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 224, 116,  37, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  12, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  19, 120, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  35,  91, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  36,  90, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  42,  84, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  44,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  45,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  50,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  54,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  58,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  62,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  65,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  68,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  71,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  79,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  84,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  91,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 225,  93,  49, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  11, 137, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  16, 126, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  33,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  37,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  38,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  39,  87, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  40,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  41,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  47,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  48,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  52,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  56,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  60,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  64,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  67,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  75,  60, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226,  90,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 226, 141,  27, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  10, 139, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  34,  94, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  35,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  43,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  44,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  45,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  50,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  54,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  58,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  62,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  71,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  74,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  79,  58, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  84,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227,  89,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 102,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 104,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 106,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 227, 108,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,   6, 150, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,   7, 146, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,   8, 144, "BKW" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  37,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  38,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  39,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  40,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  41,  86, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  42,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  47,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  48,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  52,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  56,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  60,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  64,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  67,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  70,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  78,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  83,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  88,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228,  99,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 228, 101,  46, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  12, 134, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  15, 128, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  33,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  34,  95, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  36,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  44,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  45,  83, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  50,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  54,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  58,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  62,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  74,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  77,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  82,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  87,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  96,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 229,  98,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  35,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  38,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  39,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  40,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  41,  87, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  47,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  48,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  52,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  56,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  60,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  64,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  67,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  70,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  73,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  81,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 230,  95,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  13, 132, "BY" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  36,  93, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  37,  92, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  43,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  44,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  45,  84, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  50,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  54,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  58,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  62,  71, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  66,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  69,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  77,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  87,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 231,  94,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,   6, 153, "BvE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  39,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  40,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  41,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  47,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  48,  82, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  52,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  56,  76, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  60,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  64,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  73,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  76,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  81,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  86,  56, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 232,  93,  52, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  33, 101, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  34,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  37,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  38,  92, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  43,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  44,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  45,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  50,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  54,  78, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  58,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  62,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  66,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  69,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  72,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  80,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  85,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233,  92,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 103,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 105,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 107,  45, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 109,  44, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 111,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 233, 113,  42, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  12, 138, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  15, 132, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  19, 126, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  35,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  36,  95, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  40,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  41,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  47,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  52,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  56,  77, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  57,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  60,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  64,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  76,  63, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  84,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234,  91,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 100,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 234, 102,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  34,  99, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  37,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  38,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  39,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  43,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  44,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  49,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  50,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  54,  79, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  55,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  62,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  66,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  69,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  72,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  75,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  80,  61, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  90,  55, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 235,  99,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,   6, 156, "Bo3" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,   7, 153, "GW2" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  16, 132, "XBZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  33, 103, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  35,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  36,  96, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  46,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  47,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  52,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  57,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  60,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  64,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  79,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  84,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  89,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  96,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 236,  98,  51, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  34, 100, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  37,  95, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  38,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  39,  93, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  40,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  42,  90, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  43,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  44,  88, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  49,  84, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  50,  83, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  54,  80, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  55,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  59,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  62,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  66,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  69,  69, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  72,  67, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  75,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  78,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  83,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  88,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 237,  95,  53, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  12, 140, "XB" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  35,  99, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  36,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  46,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  47,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  52,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  57,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  64,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  68,  70, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  71,  68, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  74,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  82,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  87,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238,  94,  54, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 107,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 109,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 111,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 238, 113,  44, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  33, 105, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  39,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  40,  93, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  41,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  42,  91, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  43,  90, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  44,  89, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  49,  85, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  50,  84, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  54,  81, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  55,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  59,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  62,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  66,  72, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  78,  64, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239,  93,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 104,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 106,  48, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 239, 116,  43, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,   7, 154, "GO" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  34, 102, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  35, 100, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  36,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  37,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  38,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  46,  88, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  47,  87, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  52,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  57,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  61,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  64,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  68,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  71,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  74,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  82,  62, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  87,  59, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240,  92,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240, 101,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 240, 103,  50, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  41,  93, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  42,  92, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  43,  91, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  44,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  49,  86, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  50,  85, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  54,  82, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  55,  81, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  59,  78, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  66,  73, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  78,  65, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  81,  63, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  86,  60, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241,  91,  57, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241, 100,  52, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 241, 153,  28, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  15, 138, "MTS" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  16, 135, "Ma" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  33, 107, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  37,  98, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  46,  89, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  47,  88, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  52,  84, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  57,  80, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  61,  77, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  64,  75, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  68,  72, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  71,  70, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  74,  68, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  77,  66, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  85,  61, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  90,  58, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 242,  99,  53, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,   7, 156, "Koh" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  11, 153, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  12, 144, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  21, 132, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  22, 128, "NBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  26, 126, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  31, 123, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  32, 122, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  34, 104, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  35, 102, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  36, 100, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  38,  97, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  40,  96, "BZ" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  41,  94, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  42,  93, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  43,  92, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  44,  91, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  45,  90, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  49,  87, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  50,  86, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  51,  85, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  54,  83, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  55,  82, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  56,  81, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  59,  79, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  60,  78, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  63,  76, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  66,  74, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  67,  73, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  70,  71, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  73,  69, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  76,  67, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  79,  65, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  81,  64, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  82,  63, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  84,  62, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  87,  60, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  89,  59, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  92,  57, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  94,  56, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  96,  55, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243,  98,  54, "VE" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 101,  52, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 103,  51, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 105,  50, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 107,  49, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 109,  48, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 111,  47, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 113,  46, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 115,  45, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 117,  44, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 119,  43, "Var" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 122,  42, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 127,  41, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 132,  39, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 133,  37, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 137,  36, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 142,  35, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 147,  33, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 152,  32, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 153,  29, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 154,  28, "Vx" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 157,  27, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 162,  26, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 163,  25, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 167,  24, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 172,  23, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 177,  21, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 182,  20, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 183,  19, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 187,  18, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 192,  17, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 197,  15, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 202,  14, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 203,  13, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 207,  12, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 212,  11, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 217,   9, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 222,   8, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 223,   7, "BCH" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 227,   6, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 232,   5, "XBC" ) then
	GUAVA_TEMP_VAR := false;
fi;
if YouWantThisCode( 243, 237,   3, "Ham" ) then
	GUAVA_TEMP_VAR := false;
fi;
