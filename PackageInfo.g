############################################################################
##
#W  PackageInfo.g                GUAVA Package                   Greg Gamble
#W                                                               Frank Lübeck
#W                                                               David Joyner
#W                                                               Joe Fields

SetPackageInfo( rec(
  PackageName := "GUAVA",
  Subtitle := "a GAP package for computing with error-correcting codes",
  Version := "3.19",
  Date    := "21/03/2024",
  License := "GPL-2.0-or-later",
  SourceRepository := rec(
    Type := "git",
    URL := Concatenation( 
       "https://github.com/gap-packages/", LowercaseString(~.PackageName) ),
  ),
  IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
  PackageWWWHome  := Concatenation( "https://gap-packages.github.io/", 
                         LowercaseString( ~.PackageName ) ),
  README_URL      := Concatenation( ~.PackageWWWHome, "/", "README.md" ),
  PackageInfoURL  := Concatenation( ~.PackageWWWHome, "/", "PackageInfo.g" ),
  ArchiveURL := Concatenation( ~.SourceRepository.URL,
                      "/releases/download/v", ~.Version,
                      "/", LowercaseString(~.PackageName), "-", ~.Version ),
  ArchiveFormats 
          := ".tar.gz",
  BannerString:=Concatenation("""
   ____                             |
  /                \          /   --+--  Version """, ~.Version, """
 /       |     | |\ \        / /|   |
|    __  |     | | \ \      / / |          the GUAVA Group
|      | |     | |--\ \    / /--|
 \     | |     | |   \ \  / /   |
  \___/   \___/  |    \ \/ /    |

 Homepage: https://gap-packages.github.io/guava
 Report issues at https://github.com/gap-packages/guava/issues
"""),

  Persons := [ 
    rec( 
      LastName      := "Baart",
      FirstNames    := "Reinald",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Delft",
      Institution   := "Delft University of Technology",
    ),
    rec( 
      LastName      := "Boothby",
      FirstNames    := "Tom",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Seattle",
      Institution   := "The University of Washington",
    ),
    rec( 
      LastName      := "Cramwinckel",
      FirstNames    := "Jasper",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Delft",
      Institution   := "Delft University of Technology",
    ),
    rec( 
      LastName      := "Fields",
      FirstNames    := "Joe",
      IsAuthor      := true,
      IsMaintainer  := true,
      Email         := "fieldsj1@southernct.edu",
      WWWHome       := "http://giam.southernct.edu/",
      PostalAddress := Concatenation( [
                         "Joe Fields\n",
                         "Mathematics Department\n",
                         "Southern Conn. St. Univ.\n",
                         "New Haven, CT 06515\n",
                         "USA" ] ),
      Place         := "New Haven",
      Institution   := "SCSU"
    ),
    rec( 
      LastName      := "Joyner",
      FirstNames    := "David",
      IsAuthor      := true,
      IsMaintainer  := false,
      Email         := "wdjoyner@gmail.com",
      WWWHome       := "https://sites.google.com/site/wdjoyner/",
      PostalAddress := Concatenation( [
                         "W. David Joyner\n",
                         "Mathematics Department\n",
                         "U. S. Naval Academy\n",
                         "Annapolis, MD 21402\n",
                         "USA" ] ),
      Place         := "Annapolis",
      Institution   := "U. S. Naval Academy"
    ),
    rec( 
      LastName      := "Miller",
      FirstNames    := "Robert",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Seattle",
      Institution   := "The University of Washington",
    ),
    rec( 
      LastName      := "Minkes",
      FirstNames    := "Eric",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Delft",
      Institution   := "Delft University of Technology",
    ),
    rec( 
      LastName      := "Roijackers",
      FirstNames    := "Erik",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Delft",
      Institution   := "Delft University of Technology",
    ),
    rec( 
      LastName      := "Ruscio",
      FirstNames    := "Lea",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Edinburgh",
      Institution   := "The University of Edinburgh",
    ),
    rec( 
      LastName      := "Tjhai",
      FirstNames    := "Cen",
      IsAuthor      := true,
      IsMaintainer  := false,
      Place         := "Plymouth",
      Institution   := "The University of Plymouth",
    )
  ],  

  Status  := "accepted",
  CommunicatedBy 
          := "Charles Wright (Eugene)",
  AcceptDate 
          := "02/2003",

##  Here you  must provide a short abstract explaining the package content 
##  in HTML format (used on the package overview Web page) and an URL 
##  for a Webpage with more detailed information about the package
##  (not more than a few lines, less is ok):
##  Please, use '<span class="pkgname">GAP</span>' and
##  '<span class="pkgname">MyPKG</span>' for specifying package names.
##  

  AbstractHTML := 
    "<span class=\"pkgname\">GUAVA</span> is a <span class=\"pkgname\">GAP</span> package for computing with codes. <span class=\"pkgname\">GUAVA</span> can construct unrestricted (non-linear), linear and cyclic codes; transform one code into another (for example by puncturing); construct a new code from two other codes (using direct sums for example); perform decoding/error-correction; and can calculate important data of codes (such as the minumim distance or covering radius) quickly. Limited ability to compute algebraic geometric codes.",

##  On the GAP Website there is an online version of all manuals in the
##  GAP distribution. To handle the documentation of a package it is
##  necessary to have:
##     - an archive containing the package documentation (in at least one 
##       of HTML or PDF-format, preferably both formats)
##     - the start file of the HTML documentation (if provided), *relative to
##       package root*
##     - the PDF-file (if provided) *relative to the package root*
##  For links to other package manuals or the GAP manuals one can assume 
##  relative paths as in a standard GAP installation. 
##  Also, provide the information which is currently given in your packages 
##  init.g file in the command DeclarePackage(Auto)Documentation
##  (for future simplification of the package loading mechanism).
##  
##  Please, don't include unnecessary files (.log, .aux, .dvi, .ps, ...) in
##  the provided documentation archive.
##  
# in case of several help books give a list of such records here:

  PackageDoc := rec(
    # use same as in GAP            
    BookName  := "GUAVA",
    ArchiveURLSubset := ["doc"],
    HTMLStart := "doc/chap0_mj.html",
    PDFFile   := "doc/manual.pdf",
    # the path to the .six file used by GAP's help system
    SixFile   := "doc/manual.six",
    # a longer title of the book, this together with the book name should
    # fit on a single text line (appears with the '?books' command in GAP)
    LongTitle := "GUAVA Coding Theory Package",
    Subtitle := "error-correcting codes computations",
    # Should this help book be autoloaded when GAP starts up? This should
    # usually be 'true', otherwise say 'false'. 
    Autoload := true
  ),

##  Are there restrictions on the operating system for this package? Or does
##  the package need other packages to be available?

  Dependencies := rec(
    # GAP version, use version strings for specifying exact versions,
    # prepend a '>=' for specifying a least version.
    GAP := ">= 4.8.0",
    # list of pairs [package name, (least) version],  package name is case
    # insensitive, least version denoted with '>=' prepended to version string.
    # without these, the package will not load
    NeededOtherPackages := [],
    # without these the package will issue a warning while loading
    SuggestedOtherPackages := [["SONATA",">= 2.3"]],
    # needed external conditions (programs, operating system, ...)  provide 
    # just strings as text or
    # pairs [text, URL] where URL  provides further information
    # about that point.
    # (no automatic test will be done for this, do this in your 
    # 'AvailabilityTest' function below)
    ExternalConditions := []
  ),

## Provide a test function for the availability of this package, see
## documentation of 'Declare(Auto)Package', this is the <tester> function.
## For packages which will not fully work, use 'Info(InfoWarning, 1,
## ".....")' statements. For packages containing nothing but GAP code,
## just say 'ReturnTrue' here.
## (When this is used for package loading in the future the availability
## tests of other packages, as given above, will be done automatically and
## need not be included here.)

  AvailabilityTest := 
    function()
      local path;

      # Test for existence of the compiled binary
      path := DirectoriesPackagePrograms( "guava" );

      if ForAny( ["desauto", "leonconv", "wtdist"], 
                 f -> Filename( path, f ) = fail ) then
          LogPackageLoadingMessage( PACKAGE_WARNING,
                 [ "Package ``GUAVA'': the C code programs are not compiled.",
                   "Some GUAVA functions, e.g. `IsEquivalent', ",
                   "will be unavailable.",
                   "See ?Installing GUAVA" ] );
      fi;
      return true;
    end,


##  *Optional*, but recommended: path relative to package root to a file which 
##  contains as many tests of the package functionality as sensible.
TestFile := "tst/guava.tst",

##  *Optional*: Here you can list some keyword related to the topic 
##  of the package.

  Keywords := [ "code", "codeword", "Hamming", "linear code", 
"nonlinear code","minimum distance", "minimum weight", 
"error-correcting block codes", "decoding",
"generator matrix", "check matrix","covering radius", 
"weight distribution","automorphism group of code" ],

AutoDoc := rec(
    entities := rec(
        VERSION := ~.Version,
        RELEASEDATE := function(date)
          local day, month, year, allMonths;
          day := Int(date{[1,2]});
          month := Int(date{[4,5]});
          year := Int(date{[7..10]});
          allMonths := [ "January", "February", "March", "April", "May", "June", "July",
                         "August", "September", "October", "November", "December"];
          return Concatenation(String(day)," ", allMonths[month], " ", String(year));
        end(~.Date),
        RELEASEYEAR := ~.Date{[7..10]},
    ),
),

));


