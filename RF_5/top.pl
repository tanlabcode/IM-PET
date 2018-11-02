# July 2013 by BH
# The script compiles following scripts, processes the output files from Weka, and select the top 1 promoter for each enhancer.

$PATH=shift;

system("perl $PATH/RF_5/e.pl"); # convert file format
system("perl $PATH/RF_5/b.pl out.txt"); # convert file format
system("perl $PATH/RF_5/a.pl"); # convert file format
system("perl $PATH/RF_5/final.pl $PATH"); # select top 1 promoter for each enhancer
#system("perl $PATH/RF_5/clear.pl"); # delete intermediate files
