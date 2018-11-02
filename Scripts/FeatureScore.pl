use threads;

$thr1=threads->create(\&epc);
$thr2=threads->create(\&tpc);
$thr3=threads->create(\&coev);
$thr1->join();
$thr2->join();
$thr3->join();

sub epc{
    system("perl $ARGV[0]/Scripts/EPC2.pl $ARGV[0]");
}
sub tpc{
    system("perl $ARGV[0]/Scripts/TPC2.pl $ARGV[0]");
}
sub coev{
    system("perl $ARGV[0]/Scripts/COEV2.pl $ARGV[0]");
}
