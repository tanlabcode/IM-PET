# July 2013 by BH
#
# Given enhancer/promoter position, we used LiftOver tool to identify its homologous region in 14 mammal species.
# The script runs LiftOver tool and extracts results from the 4 LiftOver output files.
# The output file lists the positions of the homologous regions across 14 mammal species.
#
# Prerequisite: LiftOver tool and LiftOver chain files downloaded from UCSC website
# Input: CRM.txt
# Output: all_crm_syn.txt

$PATH=shift;

system("perl $PATH/LiftOver_3/run.pl"); # run LiftOver under 4 cutoffs
system("perl $PATH/LiftOver_3/a.pl"); # convert file format
system("perl $PATH/LiftOver_3/a1.pl"); # convert file format
system("perl $PATH/LiftOver_3/a2.pl"); # convert file format
system("perl $PATH/LiftOver_3/a3.pl"); # convert file format
system("perl $PATH/LiftOver_3/b.pl"); # convert file format
system("perl $PATH/LiftOver_3/select.pl"); # select the most optimized mapping results
system("perl $PATH/LiftOver_3/inte.pl"); # integrate results into single file
system("perl $PATH/LiftOver_3/all.pl"); # convert file format for computing synteny score
