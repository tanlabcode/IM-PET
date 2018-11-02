#Updated May,2014 by BH

#Run liftOver tool to find homologous regions for every enhancer.
system("perl $PATH/LiftOver_3/runLiftover.pl $PATH");
#Compute synteny score.
system("perl $PATH/LiftOver_3/syn.pl $PATH");
#Extract sequence for every enhancer to compare sequence similarity.
system("perl $PATH/ALF_EVO_4/getseq.pl $PATH");
#Run ALF to calculate sequence similarity score.
system("perl $PATH/ALF_EVO_4/runalf.pl");
#Integrate synteny score and alf score to generate final COEV score.
system("perl $PATH/ALF_EVO_4/score.pl");
