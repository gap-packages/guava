#############################################################################
##
#A  upperbd2.g 		        GUAVA library                   Reinald Baart
#A                                                       & Jasper Cramwinckel
#A                                                          & Erik Roijackers
##
##  This file contains a reference and an upper bound on the minimum distance
##  of a linear code over GF(2) of given word length and dimension.
##
#Y  Copyright (C)  1994,  Vakgroep Algemene Wiskunde,  T.U. Delft,  Nederland
##
#H  CJ, 17 May 2006
#H  Updated lower- and upper-bounds of minimum distance for GF(2),
#H  GF(3) and GF(4) codes. (Brouwer's table as of 11 May 2006)
#H
#H  $Log: upperbd2.g,v $
#H  Revision 1.1.1.1  1998/03/19 17:31:44  lea
#H  Initial version of GUAVA for GAP4.  Development still under way. 
#H  Lea Ruscio 19/3/98
#H
#H
#H  Revision 1.2  1997/01/20 15:34:39  werner
#H  Upgrade from Guava 1.2 to Guava 1.3 for GAP release 3.4.4.
#H
#H  Revision 1.1  1994/11/10  14:29:23  rbaart
#H  Initial revision
#H
##
GUAVA_TEMP_VAR := [
[ 12,  5,  4, "FP"],
[ 25,  8,  9, "YH1"],
[ 25, 15,  5, "Si"],
[ 26, 13,  7, "Pu2"],
[ 28,  6, 12, "BM"],
[ 28,  8, 11, "DM"],
[ 29, 11,  9, "Ja"],
[ 29, 15,  7, "Ja"],
[ 31,  7, 13, "vT3"],
[ 33,  9, 12, "He"],
[ 33, 12, 11, "Ja"],
[ 34,  7, 15, "vT3"],
[ 34, 24,  4, "BoV"],
[ 35, 13, 11, "Ja"],
[ 35, 17,  8, "Ja"],
[ 36,  9, 14, "Ja"],
[ 39, 10, 15, "Bou"],
[ 39, 13, 13, "Ja"],
[ 40,  6, 18, "BM"],
[ 41,  8, 17, "BJV"],
[ 42, 27,  7, "Ja"],
[ 43, 13, 15, "Ja"],
[ 43, 20, 11, "Ja"],
[ 44,  8, 19, "DM"],
[ 45, 18, 13, "Ja"],
[ 48, 11, 19, "Ja"],
[ 49,  9, 20, "Ja"],
[ 49, 18, 15, "Ja"],
[ 51, 14, 18, "Ja"],
[ 53,  9, 23, "Bro"],
[ 55,  7, 25, "vT4"],
[ 55, 13, 21, "Ja"],
[ 55, 39,  7, "Ja"],
[ 57,  8, 25, "BJV"],
[ 57, 12, 23, "Ja"],
[ 58,  7, 27, "vT3"],
[ 59, 14, 22, "Ja"],
[ 59, 36, 10, "Ja"],
[ 60,  7, 28, "Hel"],
[ 60,  8, 27, "BJV"],
[ 60, 21, 19, "Ja"],
[ 63,  8, 28, "BJV"],
[ 63, 11, 26, "Ja"],
[ 64, 18, 22, "Ja"],
[ 67,  8, 31, "DHM"],
[ 67, 10, 29, "Ja"],
[ 68, 15, 26, "Ja"],
[ 68, 18, 24, "Ja"],
[ 68, 48,  8, "Ja"],
[ 69,  9, 31, "BGV"],
[ 70, 46, 10, "Ja"],
[ 70, 54,  6, "Ja"],
[ 71, 13, 29, "Ja"],
[ 72, 18, 26, "Ja"],
[ 73,  7, 34, "Hel"],
[ 73,  8, 33, "BJV"],
[ 73, 12, 31, "Ja"],
[ 74, 31, 20, "Ja"],
[ 74, 34, 19, "Bro"],
[ 74, 46, 12, "Ja"],
[ 75, 28, 22, "Ja"],
[ 76,  8, 35, "BJV"],
[ 76, 15, 30, "Ja"],
[ 76, 18, 28, "Ja"],
[ 78, 46, 14, "Ja"],
[ 79, 11, 34, "Ja"],
[ 79, 28, 24, "Ja"],
[ 79, 43, 16, "Ja"],
[ 80,  8, 37, "BJV"],
[ 80, 18, 30, "Ja"],
[ 80, 25, 26, "Ja"],
[ 80, 55, 10, "Ja"],
[ 81, 60,  8, "Ja"],
[ 82, 42, 18, "Ja"],
[ 83,  8, 39, "DHM"],
[ 83, 10, 37, "Ja"],
[ 83, 39, 20, "Ja"],
[ 83, 54, 12, "Ja"],
[ 84, 15, 34, "Ja"],
[ 84, 24, 29, "Bro"],
[ 85,  7, 40, "Hel"],
[ 85, 10, 38, "Ja"],
[ 86, 13, 36, "Ja"],
[ 87, 11, 38, "Ja"],
[ 87, 38, 23, "Bro"],
[ 88,  7, 42, "Hel"],
[ 88,  8, 41, "BJV"],
[ 88, 24, 31, "Bro"],
[ 89, 36, 25, "Bro"],
[ 89, 55, 15, "BK"],
[ 90, 19, 35, "LP"],
[ 90, 77,  5, "BK"],
[ 91,  8, 43, "DMa"],
[ 91, 49, 19, "BK"],
[ 91, 53, 17, "Jo2"],
[ 91, 74,  6, "Joplus"],
[ 92, 24, 33, "Bro"],
[ 92, 31, 29, "Bro"],
[ 92, 35, 27, "Bro"],
[ 93, 15, 39, "Bro"],
[ 93, 18, 37, "Bro"],
[ 93, 21, 35, "Bro"],
[ 94, 13, 40, "Ja"],
[ 94, 29, 31, "Bro"],
[ 95,  8, 45, "DHM"],
[ 95, 49, 21, "BK"],
[ 96,  9, 44, "Ja"],
[ 96, 11, 43, "Bro"],
[ 96, 46, 23, "LP"],
[ 96, 69, 11, "LP"],
[ 97, 21, 37, "Bro"],
[ 97, 28, 33, "Bro"],
[ 97, 43, 25, "Bro"],
[ 97, 66, 13, "BK"],
[ 98,  8, 47, "DM"],
[ 98, 19, 39, "Bro"],
[ 98, 25, 35, "Bro"],
[ 98, 40, 27, "Bro"],
[ 98, 63, 15, "LP"],
[ 99, 10, 45, "Ja"],
[ 99, 14, 42, "Ja"],
[100,  9, 47, "Bro"],
[100, 17, 41, "Bro"],
[100, 34, 31, "Bro"],
[100, 77,  9, "LP"],
[101, 21, 39, "Bro"],
[101, 39, 29, "Bro"],
[101, 58, 19, "Jo2"],
[102, 10, 47, "Bro"],
[102, 13, 44, "Ja"],
[102, 25, 37, "Bro"],
[102, 63, 17, "LP"],
[103, 33, 33, "Bro"],
[103, 56, 21, "BK"],
[104, 11, 47, "Ja"],
[104, 17, 43, "Bro"],
[104, 20, 41, "Bro"],
[104, 30, 35, "Bro"],
[105, 54, 23, "BK"],
[106, 25, 39, "Bro"],
[107, 16, 45, "Bro"],
[107, 48, 27, "LP"],
[107, 52, 25, "BK"],
[108, 14, 47, "Ja"],
[108, 20, 43, "Bro"],
[108, 30, 37, "Bro"],
[108, 45, 29, "LP"],
[108, 76, 13, "BK"],
[109, 24, 41, "Bro"],
[109, 38, 33, "Bro"],
[109, 42, 31, "Bro"],
[109, 73, 15, "BK"],
[110, 83, 10, "Joplus"],
[111, 11, 50, "Ja"],
[111, 16, 47, "Bro"],
[111, 29, 39, "Bro"],
[111, 63, 21, "BK"],
[112, 20, 45, "Bro"],
[112, 37, 35, "Bro"],
[112, 72, 17, "BK"],
[113, 24, 43, "Bro"],
[113, 27, 41, "Bro"],
[113, 34, 37, "Bro"],
[113, 69, 19, "Jo2"],
[114, 62, 23, "BK"],
[114, 96,  6, "Joplus"],
[115, 16, 49, "Bro"],
[115, 22, 45, "Bro"],
[115, 59, 25, "BK"],
[116, 11, 53, "Ja"],
[116, 14, 51, "Ja"],
[116, 20, 47, "Bro"],
[116, 26, 43, "Bro"],
[117, 34, 39, "Bro"],
[117, 49, 31, "LP"],
[117, 57, 27, "BK"],
[118, 31, 41, "Bro"],
[118, 42, 35, "Bro"],
[118, 46, 33, "LP"],
[118, 54, 29, "BK"],
[119,  8, 57, "DMa"],
[119, 11, 55, "Bro"],
[119, 13, 53, "Ja"],
[119, 16, 51, "Bro"],
[119, 22, 47, "Bro"],
[119, 39, 37, "Bro"],
[119, 95,  9, "BK"],
[120, 20, 49, "Bro"],
[120, 26, 45, "Bro"],
[121, 12, 55, "Bro"],
[121, 72, 21, "BK"],
[121, 84, 15, "BK"],
[121, 88, 13, "LP"],
[122, 18, 51, "Bro"],
[122, 21, 49, "Bro"],
[122, 31, 43, "Bro"],
[122, 69, 23, "LP"],
[122, 82, 16, "Joplus"],
[123,  8, 59, "BJV"],
[123, 16, 53, "Bro"],
[123, 39, 39, "Bro"],
[124, 14, 55, "Ja"],
[124, 26, 47, "Bro"],
[124, 36, 41, "Bro"],
[124, 79, 19, "BK"],
[125, 30, 45, "Bro"],
[125, 64, 27, "BK"],
[125, 68, 25, "BK"],
[126, 10, 59, "Ja"],
[126, 12, 57, "Ja"],
[126, 18, 53, "Bro"],
[126, 21, 51, "Bro"],
[126, 97, 11, "BK"],
[126,112,  5, "BK"],
[127, 16, 55, "Bro"],
[127, 25, 49, "Bro"],
[127, 35, 43, "Bro"],
[127, 50, 35, "BK"],
[127, 54, 33, "LP"],
[127, 62, 29, "BK"],
[129, 12, 59, "Ja"],
[129, 23, 51, "BK"],
[129, 30, 47, "LP"],
[129, 44, 39, "LP"],
[129, 48, 37, "LP"],
[129, 60, 31, "LP"],
[130, 18, 55, "BK"],
[130, 21, 53, "BK"],
[130, 27, 49, "BK"],
[130, 34, 45, "LP"],
[131, 11, 60, "Ja"],
[131, 16, 57, "BK"],
[131, 77, 23, "LP"],
[132,  9, 63, "Gur"],
[132, 14, 59, "Ja"],
[132, 22, 53, "BK"],
[132, 32, 47, "LP"],
[132, 43, 41, "LP"],
[132, 91, 16, "Jo"],
[133, 12, 60, "Ja"],
[133, 17, 57, "LP"],
[133, 40, 43, "LP"],
[133, 75, 25, "LP"],
[133, 96, 14, "Jo"],
[134, 11, 62, "Ja"],
[134, 21, 55, "BK"],
[134, 27, 51, "BK"],
[135, 16, 59, "BK"],
[135, 31, 49, "BK"],
[135, 90, 18, "Jo"],
[136, 12, 62, "Ja"],
[136, 22, 55, "BK"],
[136,103, 12, "Jo"],
[137, 17, 59, "BK"],
[137, 26, 53, "BK"],
[138,  8, 66, "Hel"],
[138, 21, 57, "BK"],
[138, 89, 20, "Jo"],
[139, 16, 61, "BK"],
[139, 31, 51, "BK"],
[140, 14, 63, "Ja"],
[140, 22, 57, "BK"],
[140, 28, 53, "BK"],
[141, 17, 61, "BK"],
[141, 26, 55, "BK"],
[141,117,  8, "Jo"],
[142, 21, 59, "BK"],
[143, 16, 63, "BK"],
[144, 22, 59, "BK"],
[144, 28, 55, "BK"],
[145, 17, 63, "BK"],
[145, 26, 57, "BK"],
[145, 99, 18, "Jo"],
[145,103, 16, "Jo"],
[145,116, 10, "Jo"],
[145,126,  6, "Jo"],
[146, 21, 61, "BK"],
[146, 23, 59, "BK"],
[147, 11, 68, "Ja"],
[147, 14, 66, "Ja"],
[147, 16, 65, "BK"],
[147, 18, 63, "BK"],
[147, 27, 57, "BK"],
[147, 97, 20, "Jo"],
[147,109, 14, "Jo"],
[148, 22, 61, "BK"],
[149, 12, 68, "Ja"],
[149, 32, 55, "BK"],
[150, 11, 70, "Ja"],
[150, 23, 61, "BK"],
[150, 89, 26, "Jo"],
[150, 96, 22, "Jo"],
[151, 16, 67, "BK"],
[151, 18, 65, "BK"],
[151, 27, 59, "BK"],
[152, 12, 70, "Ja"],
[152, 22, 63, "BK"],
[152,118, 12, "Jo"],
[153, 17, 67, "BK"],
[154, 23, 63, "BK"],
[154, 29, 59, "BK"],
[154, 96, 24, "Jo"],
[155, 13, 71, "Ja"],
[155, 16, 69, "BK"],
[155, 18, 67, "BK"],
[155, 27, 61, "BK"],
[155, 33, 57, "BK"],
[155, 37, 55, "BK"],
[156, 22, 65, "BK"],
[156, 91, 28, "Jo"],
[157, 12, 72, "Ja"],
[157, 17, 69, "BK"],
[157,110, 18, "Jo"],
[158, 23, 65, "BK"],
[158, 29, 61, "BK"],
[158,107, 20, "Jo"],
[158,115, 16, "Jo"],
[159, 16, 71, "BK"],
[159, 18, 69, "BK"],
[159, 27, 63, "BK"],
[159, 33, 59, "BK"],
[159, 97, 26, "Jo"],
[160,105, 22, "Jo"],
[161, 12, 75, "Ja"],
[161, 92, 30, "Jo"],
[162, 13, 74, "Ja"],
[162,123, 14, "Jo"],
[163, 97, 28, "Jo"],
[163,104, 24, "Jo"],
[164, 11, 77, "Ja"],
[165, 10, 79, "Gur"],
[165, 12, 76, "Ja"],
[166, 11, 78, "Ja"],
[166,136, 10, "Jo"],
[167,104, 26, "Jo"],
[168, 12, 78, "Ja"],
[168, 14, 76, "Ja"],
[168, 98, 30, "Jo"],
[168,143,  8, "Jo"],
[169,117, 20, "Jo"],
[170, 13, 78, "Ja"],
[170,122, 18, "Jo"],
[171, 18, 75, "BK"],
[171, 21, 73, "BK"],
[171, 24, 71, "BK"],
[171,104, 28, "Jo"],
[171,115, 22, "Jo"],
[171,136, 12, "Jo"],
[172,128, 16, "Jo"],
[173, 12, 80, "Ja"],
[173, 17, 77, "BK"],
[173, 19, 75, "BK"],
[173,113, 24, "Jo"],
[174, 23, 73, "BK"],
[174, 26, 71, "BK"],
[174,100, 32, "Jo"],
[175, 16, 79, "BK"],
[175, 18, 77, "BK"],
[175, 33, 67, "BK"],
[175, 39, 63, "BK"],
[176, 12, 82, "Ja"],
[176, 13, 81, "Ja"],
[176, 24, 73, "BK"],
[176,105, 30, "Jo"],
[176,112, 26, "Jo"],
[177, 17, 79, "BK"],
[177, 19, 77, "BK"],
[177, 28, 71, "BK"],
[178, 10, 85, "Ja"],
[178, 13, 82, "Ja"],
[178,100, 34, "Jo"],
[178,138, 14, "Jo"],
[179, 18, 79, "BK"],
[179, 23, 75, "BK"],
[179, 29, 71, "BK"],
[180, 10, 86, "Ja"],
[180, 27, 73, "BK"],
[180,112, 28, "Jo"],
[180,166,  4, "Jo"],
[181,  8, 88, "Hel"],
[181, 12, 84, "Ja"],
[181, 17, 81, "BK"],
[181, 19, 79, "BK"],
[181, 22, 77, "BK"],
[181,106, 32, "Jo"],
[181,128, 20, "Jo"],
[182, 11, 86, "Ja"],
[182,125, 22, "Jo"],
[183, 16, 83, "BK"],
[183, 18, 81, "BK"],
[183, 23, 77, "BK"],
[183,122, 24, "Jo"],
[183,134, 18, "Jo"],
[184,  8, 90, "Hel"],
[184, 12, 86, "Ja"],
[184, 13, 85, "Ja"],
[184,112, 30, "Jo"],
[184,164,  6, "Jo"],
[185, 17, 83, "BK"],
[185, 19, 81, "BK"],
[185, 22, 79, "BK"],
[185, 24, 77, "BK"],
[186, 13, 86, "Ja"],
[186,107, 34, "Jo"],
[186,121, 26, "Jo"],
[187,  9, 90, "Ja"],
[187, 18, 83, "BK"],
[187, 23, 79, "BK"],
[187,142, 16, "Jo"],
[188, 14, 86, "Ja"],
[189, 12, 88, "Ja"],
[189, 17, 85, "BK"],
[189, 19, 83, "BK"],
[189, 22, 81, "BK"],
[189, 24, 79, "BK"],
[189,113, 32, "Jo"],
[189,120, 28, "Jo"],
[190,104, 38, "Jo"],
[191,  9, 92, "Ja"],
[191, 13, 88, "Ja"],
[192,109, 36, "Jo"],
[192,156, 12, "Jo"],
[192,161, 10, "Jo"],
[193, 10, 92, "Ja"],
[193, 12, 91, "BK"],
[193,113, 34, "Jo"],
[193,120, 30, "Jo"],
[193,131, 24, "Jo"],
[193,135, 22, "Jo"],
[194, 20, 85, "BK"],
[194, 25, 81, "BK"],
[194, 28, 79, "BK"],
[194,140, 20, "Jo"],
[195,  9, 95, "BG3"],
[195, 13, 90, "Ja"],
[195, 23, 83, "BK"],
[195, 32, 77, "BK"],
[196, 10, 94, "Ja"],
[196, 18, 87, "BK"],
[196, 29, 79, "BK"],
[196,109, 38, "Jo"],
[196,130, 26, "Jo"],
[197, 12, 92, "Ja"],
[197, 17, 89, "BK"],
[197, 22, 85, "BK"],
[197, 24, 83, "BK"],
[197, 33, 77, "BK"],
[197,120, 32, "Jo"],
[197,147, 18, "Jo"],
[197,156, 14, "Jo"],
[198, 28, 81, "BK"],
[198,114, 36, "Jo"],
[198,128, 28, "Jo"],
[199, 13, 92, "Ja"],
[199, 23, 85, "BK"],
[199, 25, 83, "BK"],
[200, 12, 94, "Ja"],
[200, 18, 89, "BK"],
[200, 21, 87, "BK"],
[200, 29, 81, "BK"],
[200, 35, 77, "BK"],
[200,174,  8, "Jo"],
[201,  8, 98, "Hel"],
[201, 17, 91, "BK"],
[201, 24, 85, "BK"],
[201,120, 34, "Jo"],
[201,127, 30, "Jo"],
[202, 19, 89, "BK"],
[203, 13, 95, "BK"],
[203, 23, 87, "BK"],
[203, 25, 85, "BK"],
[204, 18, 91, "BK"],
[204,116, 38, "Jo"],
[204,141, 24, "Jo"],
[204,158, 16, "Jo"],
[205,  8,100, "Hel"],
[205, 14, 95, "BK"],
[205, 17, 93, "BK"],
[205, 24, 87, "BK"],
[205,146, 22, "Jo"],
[206, 19, 91, "BK"],
[206,121, 36, "Jo"],
[206,128, 32, "Jo"],
[206,139, 26, "Jo"],
[207, 23, 89, "BK"],
[207, 25, 87, "BK"],
[207,136, 28, "Jo"],
[207,152, 20, "Jo"],
[208,  8,102, "Hel"],
[208, 18, 93, "BK"],
[208, 29, 85, "BK"],
[208,113, 42, "Jo"],
[209, 14, 97, "BK"],
[209, 17, 95, "BK"],
[209,117, 40, "Jo"],
[209,127, 34, "Jo"],
[210, 19, 93, "BK"],
[210, 30, 85, "BK"],
[211, 13, 99, "BK"],
[211, 23, 91, "BK"],
[211, 25, 89, "BK"],
[211,122, 38, "Jo"],
[211,136, 30, "Jo"],
[212, 18, 95, "BK"],
[212, 29, 87, "BK"],
[213,162, 18, "Jo"],
[214,118, 42, "Jo"],
[214,128, 36, "Jo"],
[214,135, 32, "Jo"],
[215,178, 12, "Jo"],
[216, 17, 99, "BK"],
[216,123, 40, "Jo"],
[217, 12,103, "BK"],
[217, 14,101, "BK"],
[217, 24, 93, "BK"],
[217, 26, 91, "BK"],
[217,149, 26, "Jo"],
[217,153, 24, "Jo"],
[217,175, 14, "Jo"],
[218, 19, 97, "BK"],
[218, 22, 95, "BK"],
[218,128, 38, "Jo"],
[218,135, 34, "Jo"],
[218,146, 28, "Jo"],
[219, 25, 93, "BK"],
[219,159, 22, "Jo"],
[220, 13,103, "BK"],
[220, 18, 99, "BK"],
[220, 20, 97, "BK"],
[220, 31, 89, "BK"],
[220,144, 30, "Jo"],
[220,188, 10, "Jo"],
[221, 24, 95, "BK"],
[221, 26, 93, "BK"],
[222, 19, 99, "BK"],
[222,125, 42, "Jo"],
[222,135, 36, "Jo"],
[222,166, 20, "Jo"],
[222,175, 16, "Jo"],
[223,129, 40, "Jo"],
[224,144, 32, "Jo"],
[226,122, 46, "Jo"],
[226,142, 34, "Jo"],
[227,  9,111, "BG3"],
[227,136, 38, "Jo"],
[229,131, 42, "Jo"],
[229,156, 28, "Jo"],
[229,160, 26, "Jo"],
[229,164, 24, "Jo"],
[230, 11,111, "BK"],
[230,178, 18, "Jo"],
[231, 13,109, "BK"],
[231, 16,107, "BK"],
[231,143, 36, "Jo"],
[231,154, 30, "Jo"],
[232, 18,105, "BK"],
[232, 20,103, "BK"],
[232, 23,101, "BK"],
[232,127, 46, "Jo"],
[232,137, 40, "sp"],
[232,171, 22, "Jo"],
[232,211,  6, "Jo"],
[233, 12,111, "BK"],
[233, 17,107, "BK"],
[233,152, 32, "Jo"],
[234,132, 44, "Jo"],
[234,142, 38, "Jo"],
[236,137, 42, "Jo"],
[236,151, 34, "Jo"],
[237,210,  8, "Jo"],
[238,181, 20, "Jo"],
[239,143, 40, "Jo"],
[239,150, 36, "Jo"],
[240, 13,113, "BK"],
[240, 17,111, "BK"],
[240, 18,109, "BK"],
[240,134, 46, "Jo"],
[240,197, 14, "Jo"],
[241,138, 44, "Jo"],
[241,167, 28, "Jo"],
[241,171, 26, "Jo"],
[242,164, 30, "Jo"],
[242,204, 12, "Jo"],
[243,150, 38, "Jo"],
[243,161, 32, "Jo"],
[243,177, 24, "Jo"],
[243,195, 16, "Jo"],
[244,131, 50, "Jo"],
[244,144, 42, "Jo"],
[245, 12,117, "BK"],
[245, 14,115, "BK"],
[245, 17,113, "BK"],
[245, 19,111, "BK"],
[245, 21,109, "BK"],
[245,159, 34, "Jo"],
[246,139, 46, "Jo"],
[247,  9,121, "DMa"],
[247,150, 40, "Jo"],
[247,185, 22, "Jo"],
[247,194, 18, "Jo"],
[248,144, 44, "Jo"],
[249,159, 36, "Jo"],
[250,136, 50, "Jo"],
[251,  9,123, "Gur"],
[252,141, 48, "Jo"],
[252,151, 42, "Jo"],
[252,158, 38, "Jo"],
[252,173, 30, "Jo"],
[252,177, 28, "Jo"],
[253,145, 46, "Jo"],
[253,170, 32, "Jo"],
[254,183, 26, "Jo"],
[254,221, 10, "sp"],
[254,239,  4, "Jo"],
[255,197, 20, "Jo"],
[256,169, 34, "Jo"],
[257,142, 50, "Jo"],
[257,152, 44, "sp"],
[257,159, 40, "sp"]];
