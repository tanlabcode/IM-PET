#Updated May,2014 by BH

$PATH=shift;
#Download liftover chain files.
system("perl $PATH/LiftOver_3/3/download.pl $PATH");
#Run liftOver tool to find homologous regions for every enhancer.
system("perl $PATH/LiftOver_3/3/runLiftOver.pl $PATH");
#Compute synteny score.
system("perl $PATH/LiftOver_3/3/Compute_synteny.pl $PATH");
#Extract sequence for every enhancer to compare sequence similarity.
system("perl $PATH/ALF_EVO_4/4/getseq.pl $PATH");
#Run ALF to calculate sequence similarity score.
system("perl $PATH/ALF_EVO_4/4/runALF.pl");
#Integrate synteny score and alf score to generate final COEV score.
system("perl $PATH/ALF_EVO_4/4/COEV_Score.pl");
print "Compute COEV score...\n";
