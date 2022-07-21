#############################################################################
##
#A  refs.g                  GUAVA library                       Reinald Baart
#A                                                       & Jasper Cramwinckel
#A                                                          & Erik Roijackers
##
##  This file contains a record, which fields are references used in the
##  tables.
##
#Y  Copyright (C)  1994,  Vakgroep Algemene Wiskunde,  T.U. Delft,  Nederland
##
#H  CJ, 17 May 2006
#H  Updated lower- and upper-bounds of minimum distance for GF(2),
#H  GF(3) and GF(4) codes. (Brouwer's table as of 11 May 2006)
#H
#H  $Log: refs.g,v $
#H  Revision 1.1.1.1  1998/03/19 17:31:43  lea
#H  Initial version of GUAVA for GAP4.  Development still under way.
#H  Lea Ruscio 19/3/98
#H
#H
#H  Revision 1.2  1997/01/20 15:34:33  werner
#H  Upgrade from Guava 1.2 to Guava 1.3 for GAP release 3.4.4.
#H
#H  Revision 1.2  1994/11/10  14:34:24  rbaart
#H  Removed spaces
#H
#H  Revision 1.1  1994/11/10  14:29:23  rbaart
#H  Initial revision
#H
##
GUAVA_REF_LIST := rec(
ask	:= ["%T this reference is unknown, for more info",
	    "%T contact A.E. Brouwer (aeb@cwi.nl)"],

CLC	:= ["%A C.L. Chen",
	    "%T On a (145,32) binary cyclic code",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 45",
	    "%P 2546-2547",
	    "%D Nov. 1999"],

cy	:= ["%R Cyclic Code"],

cyx	:= ["%R Construction X applied to cyclic Code"],

XBZ	:= ["%R extended Blokh-Zyablov concatenated code"],

XB	:= ["%R extended Blokh-Zyablov concatenated code"],

X	:= ["%A N.J. Sloane, S.M. Reddy & C.L. Chen",
	    "%T New binary codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-18",
	    "%P 503-510",
	    "%D Jul. 1972",
	    "%O Construction X"],

XX	:= ["%A W.O. Alltop",
	    "%T A method of extending binary linear codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 30",
	    "%P 871-872",
	    "%D Nov. 1984",
	    "%O Construction XX"],

FP	:= ["%A A.B. Fontaine & W.W. Peterson",
	    "%T Group code equivalence and optimum codes",
	    "%J IRE Trans. Inform. Theory (Spec. Suppl.)",
	    "%V IT-5",
	    "%P 60-70",
	    "%D May 1959"],

QR	:= ["%R A quadratic residue code"],

Wa	:= ["%A T.J. Wagner",
	    "%T A remark concerning the minimum distance of binary group codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-11",
	    "%P 458",
	    "%D July 1965"],

HP	:= ["%A A.A. Hashim & V.S. Pozdniakov",
	    "%T Computerized search for linear binary codes",
	    "%J Electronics Letters",
	    "%V 12",
	    "%P 350-351",
	    "%D July 1976"],

YH1	:= ["%A Øyvind Ytrehus & Tor Helleseth",
	    "%T There is no binary [25,8,10] code",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 36",
	    "%P 695-696",
	    "%D May 1990"],

Si	:= ["%A J. Simonis",
	    "%T Binary even [25,15,6] codes do not exist",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-33",
	    "%P 151-153",
	    "%D Jan. 1987"],

Pi2	:= ["%A P. Piret",
	    "%T Good linear codes of lengths 27 and 28",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-26",
	    "%P 227",
	    "%D Mar. 1980"],

Ch0	:= ["%A C.L. Chen",
	    "%T Construction of some binary linear codes of minimum distance five",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 37",
	    "%P 1429",
	    "%D Sep 1991"],

Pu2	:= ["%A C.L.M. van Pul, [26,13,8] does not exist",
	    "%R priv. comm",
	    "%D 1985"],

Ka	:= ["%A M. Karlin",
	    "%T New binary coding results by circulants",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-15",
	    "%P 81-92",
	    "%D Jan. 1969"],

DM	:= ["%A S.M. Dodunekov & N.L. Manev",
	    "%T An improvement of the Griesmer bound for some small minimum distances",
	    "%J Discr. Appl. Math.",
	    "%V 12",
	    "%P 103-114",
	    "%D Oct. 1985"],

BM	:= ["%A L.D. Baumert & R.J. McEliece",
	    "%T A note on the Griesmer bound",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-19",
	    "%P 134-135",
	    "%D Jan. 1973"],

XBC	:= ["%R Extended BCH code"],

Ja	:= ["%A D.B. Jaffe",
	    "%T Binary linear codes: new results on nonexistence",
	    "%D 1996",
	    "%O http://www.math.unl.edu/~djaffe/codes/code.ps.gz"],

CS	:= ["%A Y. Cheng & N.J.A. Sloane",
	    "%T Codes from symmetry groups",
	    "%J SIAM J. Discrete Math.",
	    "%V 2",
	    "%P 28-37",
	    "%D 1989"],

vT3	:= ["%A H.C.A. van Tilborg",
	    "%T The smallest length of binary 7-dimensional linear codes with prescribed minimum distance",
	    "%J Discr. Math.",
	    "%V 33",
	    "%P 197-207",
	    "%D 1981"],

HY2	:= ["%A T. Helleseth & Ø. Ytrehus",
	    "%T How to find a [33,8,14]-code",
	    "%R Report in Informatics (preliminary version), Dept. of Informatics, Univ. of Bergen, Norway",
	    "%D Nov. 1989"],

He	:= ["%A P.W. Heijnen",
	    "%T Er bestaat geen binaire [33,9,13] code",
	    "%R Afstudeerverslag, T.U. Delft",
	    "%D Oct. 1993"],

DHM	:= ["%A S.M. Dodunekov, T. Helleseth, N. Manev & Ø. Ytrehus",
        "%T New bounds on binary linear codes of dimension eight",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-33",
	    "%P 917-919",
	    "%D Nov. 1987"],

Pi	:= ["%A P. Piret",
	    "%T Good block codes derived from cyclic codes",
	    "%J Electronics Letters",
	    "%V 10",
	    "%P 391-392",
	    "%D Sep. 1974"],

BoV	:= ["%A I.G. Bouyukliev & Z.G. Varbanov",
	    "%T Some results for linear binary codes with minimum distance 5 and 6",
	    "%R email",
	    "%D Oct. 2004"],

Mo	:= ["%A M. Morii",
	    "%R email comm",
	    "%D Sept. 1993"],

BE	:= ["%A J. Bierbrauer & Y. Edel",
	    "%T New code parameters from Reed-Solomon subfield subcodes",
	    "%J IEEE Trans. Inf. Th.",
	    "%V 43",
	    "%P 953-968",
	    "%D 1997"],

FB	:= ["%A P. Farkas & K. Brühl",
	    "%T Three best binary linear block codes of minimum distance fifteen",
	    "%J IEEE Trans. Inf. Th.",
	    "%V 40",
	    "%P 949-951",
	    "%D 1994"],

Bou	:= ["%A I. Boukliev",
	    "%T Some new bounds on minimum length for quaternary codes of dimension five",
	    "%R preprint",
	    "%D July 1994"],

RR	:= ["%A V.V. Rao & S.M. Reddy",
	    "%T A (48,31,8) linear code",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-19",
	    "%P 709-711",
	    "%D Sep. 1973"],

BJV	:= ["%A I Bouyukliev, D.B. Jaffe & V. Vavrek",
	    "%T The smallest length of eight-dimensional binary linear codes with prescribed minimum distance",
	    "%R preprint",
	    "%D 1999"],

vT1	:= ["%A H.C.A. van Tilborg",
	    "%T On quasi-cyclic codes with rate 1/m",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-24",
	    "%P 628-630",
	    "%D Sep. 1978"],

BZ	:= ["%A E. L. Blokh & V. V. Zyablov",
	    "%T Coding of generalized concatenated codes",
	    "%J Probl. Inform. Transm.",
	    "%V 10",
	    "%P 218-222",
	    "%D 1974"],

Bo0	:= ["%A I Boukliev",
	    "%R private comm",
	    "%D 1995-1997"],

Bel	:= ["%R Belov"],

Gu9	:= ["%A T. A. Gulliver",
	    "%R personal communications",
	    "%D 1993-1998"],

DJ	:= ["%A R. Dougherty & H. Janwa",
	    "%T Covering radius computations for binary cyclic codes",
	    "%J Math. Comput.",
	    "%V 57",
	    "%P 415-434",
	    "%D July 1991"],

GB5	:= ["%A T. A. Gulliver & V. K. Bhargava",
	    "%T New optimal binary linear codes of dimensions 9 and 10",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 43",
	    "%P 314-316",
	    "%D 1997"],

GG	:= ["%A B. Groneick & S. Grosse",
	    "%T New binary codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 40",
	    "%P 510-512",
	    "%D 1994"],

EB3	:= ["%A Y. Edel & J. Bierbrauer",
	    "%T Inverting Construction Y1",
	    "%R preprint",
	    "%D 1997"],

B2x	:= ["%A See A.E. Brouwer & T. Verhoeff",
	    "%T An updated table of minimum-distance bounds for binary linear codes",
	    "%J IEEE Trans. Inform. Th.",
	    "%V 39",
	    "%P 662-677",
	    "%D 1993"],

Pu	:= ["%A C.L.M. van Pul",
	    "%T On bounds on codes",
	    "%R Master's Thesis, Dept. of Math. and Comp. Sc., Eindhoven Univ. of Techn., The Netherlands",
	    "%D Aug. 1982"],

LC	:= ["%A M. Loeloeian & J. Conan",
	    "%T A [55,16,19] binary Goppa code",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-30",
	    "%P 773",
	    "%D Sep. 1984"],

Bro	:= ["%A A.E. Brouwer",
	    "%T The linear programming bound for binary linear codes",
	    "%J IEEE Trans. Inform. Th.",
	    "%V 39",
	    "%P 677-680",
	    "%D 1993"],

vT4	:= ["%A H.C.A. van Tilborg",
	    "%T A proof of the nonexistence of a binary (55,7,26) code",
	    "%R TH-Report 79-WSK-09, Techn. Hogeschool Eindhoven",
	    "%D Nov. 1979"],

Ja2	:= ["%A D. Jaffe",
	    "%R email",
	    "%D 970828, 970907, 970923, 971111, 980112, 980323"],

MoY	:= ["%A M. Morii & T. Yoshimura",
	    "%R email comm",
	    "%D Nov 1993-Jan 1994"],

BCH	:= ["%A T. Kasami & N. Tokura",
	    "%T Some remarks on BCH bounds and minimum weights of binary primitive BCH codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-15",
	    "%P 408-413",
	    "%D May 1969"],

SRC	:= ["%A N.J.A. Sloane, S.M. Reddy & C.L. Chen",
	    "%T New binary codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-18",
	    "%P 503-510",
	    "%D July 1972"],

We	:= ["%A S. Weijs",
	    "%T A computer search for quasi-cyclic codes",
	    "%R afstudeerverslag (M.Sc. Thesis), Techn. Univ. Eindhoven",
	    "%D June 1997",
	    "%O See also P. Heijnen, H. van Tilborg, T. Verhoeff & S. Weijs, Some new binary, quasi-cyclic codes, IEEE Trans. Inf. Th., to appear"],

Ch	:= ["%A Y. Cheng",
	    "%T New linear codes constructed by concatenating, extending, and shortening methods",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-33",
	    "%P 719-721",
	    "%D Sept. 1987"],

CDJ	:= ["%A Huy T. Cao, Randall L. Dougherty & Heeralal Janwa",
	    "%T A [55,16,19] binary Goppa code and related codes, having large minimum distance",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 37",
	    "%P 1432",
	    "%D Sep. 1991"],

Hel	:= ["%A T. Helleseth",
	    "%T A characterization of codes meeting the Griesmer bound",
	    "%J Inform. & Control",
	    "%V 50",
	    "%P 128-159",
	    "%D 1981"],

Sa	:= ["%A Amir Said",
	    "%R private comm",
	    "%D 910510 and 911121"],

GW2 := ["%A M. Grassl & G. White",
        "%T New Codes from Chains of Quasi-cyclic Codes",
        "%R ISIT",
        "%D 2005"],

GG1	:= ["%A B. Groneick & S. Grosse",
	    "%R priv. comm. and comm. via W. Scharlau",
	    "%D 1992-1993"],

CZ	:= ["%A Chen Zhi",
	    "%T Six new binary quasi-cyclic codes",
	    "%J IEEE Trans. Inf. Theory",
	    "%V 40",
	    "%P 1666-1667",
	    "%D 1994"],

GB0	:= ["%A T. Aaron Gulliver & Vijay K. Bhargava",
	    "%T Nine good rate (m-1)/pm quasi-cyclic codes",
	    "%J IEEE Trans. Inform. Th.",
	    "%V 38",
	    "%P 1366-1369",
	    "%D July 1991"],

To	:= ["%A L.M.G.M. Tolhuizen",
	    "%T On the optimal use and the construction of linear block codes",
	    "%R Master's Thesis, Dept. of Math. and Comp. Sc., Eindhoven Univ. of Techn., The Netherlands",
	    "%D Nov. 1986"],

To2	:= ["%A Ludo M.G.M. Tolhuizen",
	    "%T Two new binary codes obtained by shortening a generalized concatenated code",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 37",
	    "%P 1705",
	    "%D Nov. 1991"],

ZL	:= ["%A V.A. Zinoviev & S.N. Litsyn",
	    "%T Methods of code lengthening",
	    "%J Problemy Peredachi Informatsii",
	    "%V 18",
	    "%P 29-42",
	    "%D Oct-Dec 1982",
	    "%O (English translation: pp. 244-254)"],

EB2	:= ["%A Y. Edel & J. Bierbrauer",
	    "%T Twisted BCH codes",
	    "%J J. of Combinatorial Designs",
	    "%V 5",
	    "%P 377-389",
	    "%D 1997"],

BEx	:= ["%A J. Bierbrauer & Y. Edel",
	    "%T New code parameters from Reed-Solomon subfield subcodes",
	    "%J IEEE Trans. Inf. Th.",
	    "%V 43",
	    "%P 953-968",
	    "%D 1997"],

JS	:= ["%A D. Jaffe & J. Simonis",
	    "%R email",
	    "%D 970722, 980217"],

GB1	:= ["%A T. A. Gulliver & V. K. Bhargava",
	    "%T Two new rate $2/p$ binary quasi-cyclic codes",
	    "%J IEEE Trans. Inf. Theory",
	    "%V 40",
	    "%P 1667-1668",
	    "%D 1994"],

BET	:= ["%A J. Bierbrauer, Y. Edel & L. Tolhuizen",
	    "%T New codes via the lengthening of BCH codes with UEP codes",
	    "%R preprint",
	    "%D 1997"],

Hg	:= ["%A H.J. Helgert",
	    "%T Alternant codes",
	    "%J Inform. Contr.",
	    "%V 26",
	    "%P 369-380",
	    "%D Dec. 1974"],

BDH	:= ["%A I. Boukliev, S. M. Dodunekov, T. Helleseth & Ø. Ytrehus",
	    "%T On the [162,8,80;2] codes",
	    "%R preprint",
	    "%D 1996"],

HS	:= ["%A H.J. Helgert & R.D. Stinaff",
	    "%T Shortened BCH codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-19",
	    "%P 818-820",
	    "%D Nov. 1973"],

BK	:= ["%A Detlef Berntzen & Peter Kemper",
	    "%R email",
	    "%D Feb. 1993"],

LP	:= ["%R Follows from the linear programming bound"],

DMa	:= ["%A S. M. Dodunekov & N. L. Manev",
	    "%T An improvement of Greismer bound for some classes of distances",
	    "%J Probl. Peredachi Informatsii",
	    "%V 23",
	    "%P 47-56",
	    "%D 1987",
	    "%O (Russian); English transl. in Problems of Inform. Transm. 23 (1987) 38-46"],

Jo2	:= ["%A S.M. Johnson",
	    "%T On upper bounds for unrestricted binary error-correcting codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-17",
	    "%P 466-478",
	    "%D July 1971"],

DaH	:= ["%A Rumen Daskalov & Plamen Hristov",
	    "%T New One-Generator Quasi-Cyclic Codes over GF(7)",
	    "%R preprint",
	    "%D Oct 2001",
	    "%O R. Daskalov & P Hristov, New One-Generator Quasi-Twisted Codes over GF(5), (preprint) Oct. 2001. R. Daskalov & P Hristov, <i>New Quasi-Twisted Degenerate Ternary Linear Codes, preprint, Nov 2001. Email, 2002-2003"],

AGP	:= ["%A A.O.L. Atkin, P. Gaborit, V. Pless & P Sole",
	    "%R email",
	    "%D 2001"],

Roe	:= ["%A G. Roelofsen",
	    "%T On Goppa and generalized Srivastava codes",
	    "%R Master's Thesis, Dept. of Math. and Comp. Sc., Eindhoven Univ. of Techn., The Netherlands",
	    "%D Aug. 1982"],

Joplus	:= ["%A A.E. Brouwer",
	    "%T The linear programming bound for binary linear codes",
	    "%J IEEE Trans. Inform. Th.",
	    "%V 39",
	    "%P 677-680",
	    "%D 1993"],

Gp	:= ["%A V. D. Goppa",
	    "%T A new class of linear error-correcting codes",
	    "%J Problems of Info. Transmission",
	    "%V 6",
	    "%P 207-212",
	    "%D 1970"],

GB	:= ["%A T. Aaron Gulliver & Vijay K. Bhargava",
	    "%T Some best rate 1/p and rate (p-1)/p systematic quasi-cyclic codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 37",
	    "%P 552-555",
	    "%D May 1991"],

QC	:= ["%A A.E. Brouwer & T. Verhoeff",
	    "%T An updated table of minimum-distance bounds for binary linear codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 39",
	    "%P 662-677",
	    "%D 1993"],

MMT	:= ["%A Hideaki TANAKA, Masami MOHRI, Masakatu MORII",
	    "%R email, comm",
	    "%D Feb 2005"],

EB1	:= ["%A Y. Edel & J. Bierbrauer",
	    "%T Some codes related to BCH codes of low dimension",
	    "%R preprint",
	    "%D 1995"],

BJK	:= ["%A Irina E. Bocharova, Rolf Johannesson, Boris D. Kudryashov & Per Ståhl",
	    "%T Tailbiting Codes: Bounds and Search Results",
	    "%O IEEE, to appear"],

BHJ	:= ["%A I. E. Bocharova, M. Handlery, R. Johannesson & B. D. Kudryashov",
	    "%T Tailbiting Codes Obtained via Convolutional Codes with Large Slope",
	    "%O to be submitted to IEEE"],

RS	:= ["%A Rains & Sloane",
	    "%T Self-dual codes",
	    "%O in: Handbook of Coding theory, Table XI, p. 274"],

Dup	:= ["%A Scott Duplichan",
	    "%R email 000517"],

Gur	:= ["%A Sugi Guritman",
	    "%T Restrictions on the weight distribution of linear codes",
	    "%R Thesis, Techn. Univ. Delft",
	    "%D 2000"],

BE3	:= ["%A J. Bierbrauer & Y. Edel",
	    "%T Extending and lengthening BCH-codes",
	    "%R preprint"],

Su	:= ["%A Y. Sugiyama, M. Kasahara, S. Hirasawa & T. Namekawa",
	    "%T Some efficient binary codes constructed using Srivastava codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-21",
	    "%P 581-582",
	    "%D Sep. 1975"],

Vx	:= ["%R From the Varshamov-Gilbert bound together with construction X"],

Jo	:= ["%R Follows from the Johnson bound"],

GB6	:= ["%A T. A. Gulliver & V. K. Bhargava",
	    "%T Improvements to the bounds on optimal binary linear codes of dimensions 11 and 12",
	    "%J Ars Combinatoria",
	    "%V 44",
	    "%P 173-181",
	    "%D 1996"],

Kol	:= ["%A David R. Kohel",
	    "%R email",
	    "%D 1998-11-19"],

Gu	:= ["%A T. A. Gulliver",
	    "%R personal communications",
	    "%D 1993-1998"],

HvT	:= ["%A Tor Helleseth & Henk C.A. van Tilborg",
	    "%T The classification of all (145,7,72) binary linear codes",
	    "%R TH-Report 80-WSK-01, Techn. Hogeschool Eindhoven",
	    "%D April 1980"],

TTH	:= ["%A C. Tjhai, M. Tomlinson, R. Horan, M. Ahmed & M. Ambroze",
	    "%T Linear codes derived from binary cyclic codes of length 151",
	    "%R preprint",
	    "%D 2005"],

KSH	:= ["%A M. Kasahara, Y. Sugiyama, S. Hirasawa & T. Namekawa",
	    "%T A new class of binary codes constructed on the basis of BCH codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V IT-21",
	    "%P 582-585",
	    "%D Sep. 1975"],

BKW	:= ["%A Michael Braun, Axel Kohnert & Alfred Wassermann",
	    "%T Optimal linear codes from matrix groups",
	    "%R preprint",
	    "%D Mar 2004",
	    "%O and Construction of (sometimes) Optimal Linear Codes, email, Mar 2005"],

Zwa	:= ["%A Johannes Zwanzger",
	    "%R pers.comm",
	    "%D Dec 2005"],

BG3	:= ["%A M. C. Bhandari & M. S. Garg",
	    "%T A new lower bound on the minimal length of a binary linear code",
	    "%J Europ. J. Combin.",
	    "%V 17",
	    "%P 335-342",
	    "%D 1996"],

Sab	:= ["%A Roberta E. Sabin",
	    "%R email",
	    "%D Aug. 1994"],

VE	:= ["%R From repeated Varshamov-Edel lengthening"],

MYI	:= ["%A M. Morii, T. Yoshimura & Y. Itoh",
	    "%R email comm",
	    "%D Feb-Mar 1995"],

PD	:= ["%A M. Grassl",
	    "%R email",
	    "%D 2001-03-21",
	    "%O by puncturing a GG code at a word of the dual"],

Rod	:= ["%A F. Rodier",
	    "%T On the minimum distance of the duals of 4-error correcting extended BCH codes",
	    "%R preprint",
	    "%D Oct. 1997"],

Lun	:= ["%A Anders Lundqvist",
	    "%R pers.comm",
	    "%D 1997"],

HN	:= ["%A R. Hill & D.E. Newton",
	    "%T Optimal ternary linear codes",
	    "%J Des. Codes Cryptogr.",
	    "%V 2",
	    "%P 137-157",
	    "%D 1992"],

KP	:= ["%A F.R. Kschischang & S. Pasupathy",
	    "%T Some ternary and quaternary codes and associated sphere packings",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 38",
	    "%P 227-246",
	    "%D 1992"],

vE2	:= ["%A M. van Eupen",
	    "%T Four nonexistence results for ternary linear codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 41",
	    "%P 800-805",
	    "%D 1995"],

Hi1	:= ["%A R. Hill",
	    "%T On the largest size of cap in S(5,3)",
	    "%R Rend. Accad. Naz. Lincei (8) {bf 54}",
	    "%D 1973",
	    "%O 378-384"],

Pel	:= ["%A G. Pellegrino",
	    "%T Sul massimo ordine della calotte in $S_{4,3}$",
	    "%J Matematiche",
	    "%V 25",
	    "%P 149-157",
	    "%D 1971"],

Ple	:= ["%A V. Pless",
	    "%T On a new family of symmetry codes and related new 5-designs",
	    "%J Bull. Amer. Math. Soc.",
	    "%V 75",
	    "%P 1339-1342",
	    "%D 1969"],

vE0	:= ["%A M. van Eupen",
	    "%T Five new optimal ternary linear codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 40",
	    "%P 193",
	    "%D 1994"],

HHM	:= ["%A N. Hamada, T. Helleseth, H.M. Martinsen & Ø. Ytrehus",
	    "%T There is no ternary [28,6,16] code"],

GuB	:= ["%A T. A. Gulliver",
	    "%R personal communications",
	    "%D 1993-1998"],

GB4	:= ["%A T. A. Gulliver & V. K. Bhargava",
	    "%T New good rate $(m-1)/pm$ ternary and quaternary cyclic codes",
	    "%J Des. Codes Cryptogr.",
	    "%V 7",
	    "%P 223-233",
	    "%D 1996"],

BB	:= ["%A G. T. Bogdanova & I. G. Boukliev",
	    "%T New linear codes of dimension 5 over GF(3)",
	    "%R Proc. 4th Internat. Workshop on Algebraic and Combinatorial Coding Theory, Novgorod, Russia",
        "%P 41-43",
	    "%D Sept. 1994"],

Bo1	:= ["%A I. Boukliev",
	    "%T A method for construction of good linear codes",
	    "%R preprint submitted to the International Workshop on Optimal Codes and Related Topics, Bulgaria, Sozopol",
	    "%D 1995"],

Be	:= ["%A G. F. M. Beenker",
	    "%T A note on extended quadratic residue codes over GF(9) and their ternary images",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 30",
	    "%P 403-405",
	    "%D 1984"],

vE1	:= ["%A M. van Eupen",
	    "%T Some new results for ternary linear codes of dimension $5$ and $6$",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 41",
	    "%P 2048-2051",
	    "%D 1995"],

BKn	:= ["%A Detlef Berntzen & Peter Kemper",
	    "%R email",
	    "%D Feb. 1993"],

Glo	:= ["%A Volker von Gloeden",
	    "%T Kubische Reste Codes",
	    "%R Dipl",
	    "%D marbeit, Düsseldorf, Oktober 2002"],

Gu1	:= ["%A T. A. Gulliver",
	    "%T New optimal ternary linear codes of dimension 6",
	    "%J Ars Combin.",
	    "%V 40",
	    "%P 97-108",
	    "%D 1995"],

HJ	:= ["%A R. Hill and C. Jones",
	    "%T The non-existence of ternary [47,6,29] codes"],

CG	:= ["%A Y. Cheng & D. J. Guan",
	    "%R pers. comm"],

ARS	:= ["%A Nuh Aydin, Dijen Ray-Chaudhuri, Irfan Siap",
	    "%R email",
	    "%D 1999-2000"],

Gu2	:= ["%A T. A. Gulliver",
	    "%T New optimal ternary linear codes",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 41",
	    "%P 1182-1185",
	    "%D 1995"],

D1	:= ["%R Code found by the (u|u+v) construction"],

GO	:= ["%A T. A. Gulliver & P. R. J. Östergård",
	    "%T Improved bounds for ternary linear codes of dimension 7",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 43",
	    "%P 1377-1381",
	    "%D 1997"],

Ha	:= ["%A N. Hamada",
	    "%R pers. comm"],

vEH	:= ["%A M. van Eupen & R. Hill",
	    "%T An optimal ternary $[69,5,45]$ code and related codes",
	    "%J Des. Codes Cryptogr.",
	    "%V 4",
	    "%P 271-282",
	    "%D 1994"],

Ma	:= ["%A T. Maruta",
	    "%T On the nonexistence of linear codes attaining the Griesmer bound",
	    "%J Geom. Dedicata",
	    "%V 60",
	    "%P 1-7",
	    "%D 1996"],

ASR	:= ["%A Nuh Aydin, Irfan Siap & Dijen Ray-Chaudhuri",
	    "%T New ternary quasicyclic codes with improved minimum distances",
	    "%R preprint",
	    "%D 1999"],

HW1	:= ["%A N. Hamada & Y. Watamori",
	    "%T The nonexistence of $[71,5,46;3]$ codes",
	    "%J J. Statist. Plann. Inf.",
	    "%V 52",
	    "%P 379-394",
	    "%D 1996"],

Bo3	:= ["%A I. Boukliev",
	    "%T Some new optimal ternary linear codes",
	    "%J Des. Codes Cryptogr.",
	    "%V 12",
	    "%P 5-11",
	    "%D 1997"],

Da	:= ["%A R. N. Daskalov",
	    "%R pers. comm",
	    "%D 1992-2005"],

HHY	:= ["%A N. Hamada, T. Helleseth & Ø. Ytrehus",
	    "%T On the construction of $[q^4+q^2-q,5,q^4-q^3+q^2-2q;q]$-codes meeting the Griesmer bound",
	    "%J Des. Codes Cryptogr.",
	    "%V 2",
	    "%P 225-229",
	    "%D 1992"],

dB	:= ["%A M.A. de Boer",
	    "%T A ternary [91,9,54] code",
	    "%J preprint, 9504; A dual quaternary BCH code, 9502. Codes spanned by quadratic and Hermitian forms, IEEE Trans. Inform. Theory",
	    "%V 42",
	    "%P 1600-1604",
	    "%D 1996"],

Ed2	:= ["%A Y. Edel",
	    "%T Extending and lengthening BCH-codes",
	    "%R preprint",
	    "%D 9710",
	    "%O 07"],

HH	:= ["%A N. Hamada & T. Helleseth",
	    "%T The nonexistence of some ternary linear codes and update of the bounds for n_3(6,d), 1 <= d <= 243",
	    "%R preprint",
	    "%D 1999"],

LX	:= ["%A San Ling & Chaoping Xing",
	    "%T Polyadic Codes Revisited",
	    "%R preprint",
	    "%D 2003"],

GO2	:= ["%A T. A. Gulliver & P. R. J. Östergård",
	    "%T Improved bounds for ternary linear codes of dimension 8",
	    "%R preprint",
	    "%D Nov. 1997"],

DGM	:= ["%A R.N. Daskalov, T.A. Gulliver & E. Metodieva",
	    "%T New Ternary Linear Codes",
	    "%R IEEE Trans.Inf.Theory",
        "%V 45",
        "%P 1687-1688",
	    "%D 1999",
	    "%O no.5"],

DM5	:= ["%A R. N. Daskalov & E. Metodieva",
	    "%T The nonexistence of ternary [105,6,68] and [230,6,152] codes",
	    "%O Designs, Codes and Cryptography, submitted"],

Ed	:= ["%A Y. Edel",
	    "%T Eine Verallgemeinerung von BCH-Codes",
	    "%R Ph.D. Thesis, Univ. Heidelberg",
	    "%D 1996"],

Var	:= ["%A R.R. Varshamov",
	    "%T Problems of the general theory of linear coding",
	    "%R Ph.D. thesis, Moscow State Univ",
	    "%D 1959",
	    "%O (Russian) (from the Varshamov-Gilbert bound)"],

Br2	:= ["%A A. E. Brouwer",
	    "%T Linear spaces of quadrics and new good codes",
	    "%R preprint",
	    "%D 1997"],

DG4	:= ["%A Rumen N. Daskalov & T. Aaron Gulliver",
	    "%T New Minimum Distance Bounds for Linear Codes over Small Fields",
	    "%R preprint",
	    "%D March 2001"],

Da2	:= ["%A R.N. Daskalov",
	    "%T The linear programming bound for ternary linear codes",
	    "%R IEEE International Symposium on Information Theory, Trondheim",
        "%P 423",
	    "%D 1994"],

Koh	:= ["%A Axel Kohnert",
	    "%R email",
	    "%D 2006"],

BEH	:= ["%A J. Barat, Y. Edel, R. Hill & L. Storme",
	    "%T On complete caps in the projective geometriesover F3, II: New improvements.",
	    "%R J. Combin. Math. and Combin. Computing 49",
	    "%P 9-31",
	    "%D 2004"],

Lan	:= ["%A I.N. Landgev",
	    "%T Nonexistence of $[143,5,94]_3$ codes",
        "%R Proc. Internat. Workshop on Optimal Codes and Related Topics, Sozopol, Bulgaria",
	    "%P 108-116", 
	    "%D 1995"],

Da9	:= ["%A R. N. Daskalov",
	    "%T The sharpened linear programming bound for ternary linear codes",
        "%R Mathematics and Education in Mathematics, Sofia",
	    "%P 158-166", 
	    "%D 1995"],

Lg	:= ["%A I.N. Landgev",
	    "%T The nonexistence of some ternary five-dimensional codes",
	    "%O Des. Codes Cryptogr., to appear"],

Da0	:= ["%A R. N. Daskalov",
	    "%T New Ternary Linear Codes in Dimensions 18 and 19",
	    "%R preprint",
	    "%D Oct 2001"],

Da6	:= ["%A R. N. Daskalov",
	    "%T Some nonexistence results for 7-dimensional ternary linear codes",
	    "%R preprint",
	    "%D 1998"],

DM4	:= ["%A R. N. Daskalov & E. Metodieva",
	    "%T The Linear Programming Bound for Ternary and Quaternary Linear Codes",
	    "%R preprint",
	    "%D Jan 2002"],

Da5	:= ["%A R. N. Daskalov",
	    "%T The non-existence of ternary linear [158,6,104] and [203,6,134] codes",
	    "%R preprint",
	    "%D 1998"],

BvE	:= ["%A A. E. Brouwer & M. van Eupen",
	    "%T The correspondence between projective codes and 2-weight codes",
	    "%R Designs, Codes and Cryptography 11",
	    "%P 261-266",
	    "%D 1997"],

GH	:= ["%A P.P. Greenough & R. Hill",
	    "%T Optimal linear codes over GF(4)",
	    "%J Discrete Math.",
	    "%V 125",
	    "%P 187-199",
	    "%D 1994"],

MOS	:= ["%A F.J. MacWilliams, A.M. Odlyzko, N.J.A. Sloane & H.N. Ward",
	    "%T Self-dual codes over GF(4)",
	    "%J J. Comb. Th. (A)",
	    "%V 25",
	    "%P 288-318",
	    "%D 1978"],

Liz	:= ["%A P. Lizak",
	    "%T Optimal quaternary linear codes",
	    "%R Ph. D. Thesis, Univ. of Salford",
	    "%D Nov. 1995"],

IN	:= ["%A H. Itoh & M. Nakamichi",
	    "%T SbEC-DbED codes derived from experiments on a computer for semiconductor memory systems",
	    "%R Electronics and Communications in Japan", 
        "%V 66-A", 
	    "%D 1983",
        "%O No.8"],

Zi	:= ["%A Thomas Rehfinger, N. Suresh Babu & Karl-Heinz Zimmermann",
	    "%T New Good Codes via CQuest -- A System for the Silicon Search of Linear Codes",
        "%R Algebraic Combinatorics and Applications, A. Betten et al., eds, Springer",
	    "%P 294-306",
	    "%D 2001"],

Da4	:= ["%A R. N. Daskalov",
	    "%T Ten good quasicyclic 10-dimensional quaternary linear codes",
	    "%R Optimal codes and related topics, Proc. Internat. Workshop on Optimal Codes and Related Topics, Sozopol, Bulgaria",
        "%P 45-49",
	    "%D 1995"],

DG5	:= ["%A Rumen N. Daskalov & T. Aaron Gulliver",
	    "%T New Quasi-Twisted Quaternary Linear Codes",
	    "%R IEEE Trans. Inf. Theory", 
        "%V 46", 
	    "%P 2642-2643",
	    "%O no.7"],

Du3	:= ["%A I. Duursma",
	    "%R email",
	    "%D 050809"],

DG	:= ["%A R.N. Daskalov & T.A. Gulliver",
	    "%T New good quasi-cyclic ternary and quaternary codes",
	    "%R IEEE Trans.Inf.Th.",
        "%V 43",
	    "%P 1647-1650",
        "%D 1997",
	    "%O no.5"],

BMP	:= ["%A J. Bierbrauer, S. Marcugini & F. Pambianco",
	    "%T A family of highly symmetric codes",
	    "%R preprint",
	    "%D 2002"],

Ayd	:= ["%A Nuh Aydin",
	    "%T preprint",
	    "%D 2003"],

GW1 := ["%A M. Grassl & G. White",
        "%T New Good Linear Codes by Special Puncturings",
        "%R ISIT 2004 Chicago USA",
        "%D June 27 - July 2 2004"],

LMH	:= ["%A I. Landgev, T. Maruta, R. Hill",
	    "%T On the nonexistence of quaternary [51,4,37] codes",
	    "%J Finite Fields Appl.",
	    "%V 2",
	    "%P 96-110",
	    "%D 1996"],

YC	:= ["%A Ying Cheng",
	    "%R pers. comm. Sloane",
	    "%D Feb. 1993"],

HLa	:= ["%A R. Hill & I. Landgev",
	    "%T On the nonexistence of some quaternary codes",
	    "%R Proc. IMA conf. Finite Fields and their Applications",
	    "%D June 1994"],

Tol	:= ["%A L.M.G.M. Tolhuizen",
	    "%T Cooperating error-correcting codes and their decoding",
	    "%R Ph.D. thesis, Eindhoven Univ. of Techn",
	    "%D June 1996"],

Hi	:= ["%A R. Hill",
	    "%T Caps and Groups",
	    "%J Coll. Intern. Teorie Combin. Acc. Naz. Lincei, Roma 1973, Atti dei convegni Lincei",
	    "%V 17",
	    "%P 389-394",
	    "%D 1976",
	    "%O Rome"],

DNX	:= ["%A Cunsheng Ding, Harald Niederreiter & Chaoping Xing",
	    "%T Some new codes from algebraic curves",
	    "%R IEEE Trans. On Inform. Theory",
        "%V 46",
	    "%P 2638-2642",
	    "%D 2000"],

Gu3	:= ["%A T. A. Gulliver",
	    "%T New optimal quaternary linear codes of dimension 5",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 42",
	    "%P 2260-2265",
	    "%D 1996"],

BDK	:= ["%A I. Boukliev, R. Daskalov & S. Kapralov",
	    "%T Optimal quaternary codes of dimension five",
	    "%J IEEE Trans. Inform. Theory",
	    "%V 42",
	    "%P 1228-1235",
	    "%D 1996"],

Da1	:= ["%A R.N. Daskalov",
	    "%T The linear programming bound for quaternary linear codes",
	    "%R Proceedings ACCT4'94, Novgorod, Russia", 
	    "%P 74-77",
	    "%D Sept. 11-17, 1994"],

DM3	:= ["%A R. N. Daskalov & E. Metodieva",
	    "%T Bounds on minimum length for quaternary linear codes in dimensions six and seven",
	    "%R Mathematics and Education in Mathematics, Sofia",
	    "%P 156-161",
	    "%D 1994"]

);
