############################################################
#
# commands to create GUAVA documentation using GAPDoc 
#
###########################################################


path := Directory("/usr/local/lib/gap4r7/pkg/guava-3.13/doc"); ## edit this path if needed
main:="guava.xml"; 
files:=[];
bookname:="guava";
MakeGAPDocDoc( path, main, files, bookname);
