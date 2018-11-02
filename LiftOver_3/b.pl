@file=glob("*_tmp1.txt");
foreach $f(@file){
    $f1=$f;
    $f1 =~ s/tmp1/CRM/;
    system("mv $f $f1");
}
