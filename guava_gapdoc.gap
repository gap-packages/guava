############################################################
#
# commands to create GUAVA documentation using GAPDoc 
#
###########################################################


path := Directory("/usr/lib/gap4r5/pkg/guava-3.12/doc"); ## edit this path if needed
main:="guava.xml"; 
files:=[];
bookname:="guava";
MakeGAPDocDoc( path, main, files, bookname);
