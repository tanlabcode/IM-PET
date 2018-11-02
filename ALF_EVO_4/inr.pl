system("perl $ARGV[0]/ALF_EVO_4/rank1.pl $ARGV[0] 3");
for($i=4;$i<15;$i++){
    print "$i\n";
    system("perl $ARGV[0]/ALF_EVO_4/rank.pl $ARGV[0] $i");
}
