############################################################
#
# commands to create GUAVA documentation using GAPDoc
#
###########################################################


path := Directory("/usr/local/lib/gap4r7/pkg/guava-3.13/doc"); ## edit this path if needed

bibfile := Filename( path , "guava.bib");
bibxmlfile := Filename( path , "guava_bib.xml");

bibdata := ParseBibFiles( bibfile);;
WriteBibXMLextFile( bibxmlfile, bibdata);
Exec(Concatenation( "sed -i 's|\\\\url{http:\\([a-zA-Z0-9/\\.~]*\\)}|<URL>http:\\1</URL>|g' ", bibxmlfile));

main := "guava.xml";
files := [];
bookname := "guava";
MakeGAPDocDoc( path, main, files, bookname);
