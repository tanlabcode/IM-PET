$PATH=shift;
system("mkdir sig");
for($i=1;$i<23;$i++){
    #print "perl $PATH/SelectPromoter_1/Scripts/tmp.pl chr$i\n";
    system("perl $PATH/SelectPromoter_1/Scripts/tmp.pl chr$i");
}
system("perl $PATH/SelectPromoter_1/Scripts/tmp.pl chrX");
system("perl $PATH/SelectPromoter_1/Scripts/tmp.pl chrY");
