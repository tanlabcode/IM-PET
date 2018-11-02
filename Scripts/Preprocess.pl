use threads;

print "Preprocess...\n";

$thr1=threads->create(\&signal);
$thr2=threads->create(\&select);
$thr1->join();
$thr2->join();

sub signal{
    system("perl $ARGV[0]/SelectPromoter_1/extractEnhancerSignal.pl $ARGV[0]");
    system("perl $ARGV[0]/SelectPromoter_1/computeEnhancerSignal.pl $ARGV[0]");
}
sub select{
    system("perl $ARGV[0]/SelectPromoter_1/SelectPro_new.pl $ARGV[0]");
}
