$PATH=shift;
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToMm10.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToCalJac3.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToCavPor3.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToEriEur1.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToGorGor3.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToNomLeu1.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToOryCun2.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToPanTro3.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToPonAbe2.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToRheMac2.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToRn4.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToSorAra1.over.chain.gz $PATH/LiftOver_3/.");
system("rsync -a -q -P rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/liftOver/hg19ToTupBel1.over.chain.gz $PATH/LiftOver_3/.");

