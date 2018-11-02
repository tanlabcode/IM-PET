# July 2013 by BH
#
# Given the homologous regions of each enhancer, we first obtain their sequences using the following scripts

$PATH=shift;

system("perl $PATH/ALF_EVO_4/generateBED.pl"); # convert file format
system("perl $PATH/ALF_EVO_4/generateBED2.pl"); # convert file format
system("perl $PATH/ALF_EVO_4/seq.pl"); # extract sequences4
