[![Build Status](https://github.com/gap-packages/guava/workflows/CI/badge.svg?branch=master)](https://github.com/gap-packages/guava/actions?query=workflow%3ACI+branch%3Amaster)
[![Code Coverage](https://codecov.io/github/gap-packages/guava/coverage.svg?branch=master&token=)](https://codecov.io/gh/gap-packages/guava)


The GUAVA Coding Theory Package
-------------------------------

GUAVA is a package that implements coding theory algorithms
in  GAP.  With GUAVA, codes can be created and manipulated
and information about these codes can be calculated.

GUAVA consists of various files written in the GAP language,
and an external program from J.S. Leon for dealing with
automorphism  groups of codes and isomorphism testing
functions.  Several algorithms that need the speed are
integrated in the GAP kernel. Please send your bug reports
and feature requests to the issue tracker at the GUAVA Github
repository. For details, see the section "Bug reports" below.

For an overview of the history of the GUAVA project see the
file `HISTORY` in the main GUAVA package directory.

Installing GUAVA
----------------

A fresh installation of GAP 4.7 or higher will include Guava
automatically in the system `pkg` directory (typically
something like /usr/lib/gap4r7/pkg on unix machines.)  The
backtrack programs which compute code automorphism groups
may need to be compiled (see below).

If GUAVA is not present (a call to `LoadPackage("guava")`
fails at a GAP prompt.)  You may need to install GUAVA (as
a GAP4 Package) as a separate step.  Unpack the archive
file in a directory in the `pkg` hierarchy of your version
of GAP4. (This  might be the `pkg` directory of the GAP4
home directory; it is however also possible to keep an
additional `pkg` directory in your private directories, see
section "Installing GAP Packages" of the GAP4 reference
manual for details on how to do this.)

After unpacking GUAVA the GAP-only part of GUAVA is
installed.  The parts of GUAVA depending on J. S. Leon's
backtrack programs package (for computing automorphism
groups and code equivalence) need to be compiled separately.
For Windows machines it will probably be necessary to
install additional software -- instructions are available
at the Guava website.

In a UNIX or MacOS environment.  You should proceed as
follows:

Go to the  newly  created  `guava`  directory  and  call
`./configure <path>` where <path> is the path to the GAP
home directory.  So for example, if you install the package
in the main `pkg` directory call

    ./configure ../..

This will fetch the architecture type for which GAP has been
compiled last and create a `Makefile`. Now call

    make

to compile the binaries and to install them in the
appropriate place.

This completes the installation of GUAVA for a single
architecture. If you use this installation of GUAVA on
different hardware platforms you will have to compile the
binaries for each platform separately.  This is done by
calling  `configure`  and  `make` for the package anew
immediately after compiling GAP itself for the respective
architecture. If your version of GAP is already compiled
(and has last been compiled on the same architecture) you
do not need to compile GAP again; it is sufficient to call
the `configure` script in the GAP home directory.

Loading GUAVA
-------------

After starting up GAP, the GUAVA package needs to be
loaded.  Load GUAVA by typing at the GAP prompt:

    gap> LoadPackage( "guava" );

If GUAVA isn't already in memory, it is loaded and its
beautiful banner is displayed.

If you  are a frequent user of  GUAVA, you might consider
putting this line in your `gaprc` file, or add GUAVA to the
"PackagesToLoad" preference in your `gap.ini` file (the
location of the ini file can be determined by typing

    gap> GAPInfo.UserGapRoot;

at the gap prompt.

Additionally, you may wish to test the installation by
reading in the Guava test file:

    gap> Test(Filename(DirectoriesPackageLibrary("guava", "tst"), "guava.tst"));

Bug reports
-----------

The preferred method for bug reports and feature requests
is to raise an issue at the GUAVA GitHub repository:

  <https://github.com/gap-packages/guava/issues>

Alternatively, you are welcome to send bug reports and
other requests via email to support@gap-system.org.
Remember we will need to be able to reproduce the problem;
so please include:

 * The version of GAP you are using; either look at  the  header  when
   you start up GAP, or at the gap> prompt type: GAPInfo.Version;
 * The operating system you are using e.g. Linux, macOS, Windows, ...
 * The compiler (if any) you used to compile the binaries and the options
   you used. Type: gcc -v or: cc -version.
 * A script that demonstrates the bug, along with a description of why
   it's a bug  (e.g.  by  adding  comments  to  the  script  -  recall
   comments in GAP  begin with a #).

  - Joe Fields (<fieldsj1@southernct.edu>)
    April, 2022
