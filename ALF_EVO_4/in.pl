system("mkdir INPUT");

open(CJS,"CalJac3_summary.txt");
open(CJF,"CalJac3_summary.bed.fa");
open(CPS,"CavPor3_summary.txt");
open(CPF,"CavPor3_summary.bed.fa");
open(EES,"EriEur1_summary.txt");
open(EEF,"EriEur1_summary.bed.fa");
open(GGS,"GorGor3_summary.txt");
open(GGF,"GorGor3_summary.bed.fa");
open(MMS,"Mm10_summary.txt");
open(MMF,"Mm10_summary.bed.fa");
open(NLS,"NomLeu1_summary.txt");
open(NLF,"NomLeu1_summary.bed.fa");
open(OCS,"OryCun2_summary.txt");
open(OCF,"OryCun2_summary.bed.fa");
open(PTS,"PanTro3_summary.txt");
open(PTF,"PanTro3_summary.bed.fa");
open(PAS,"PonAbe2_summary.txt");
open(PAF,"PonAbe2_summary.bed.fa");
open(RMS,"RheMac2_summary.txt");
open(RMF,"RheMac2_summary.bed.fa");
open(RNS,"Rn4_summary.txt");
open(RNF,"Rn4_summary.bed.fa");
open(SAS,"SorAra1_summary.txt");
open(SAF,"SorAra1_summary.bed.fa");
open(TBS,"TupBel1_summary.txt");
open(TBF,"TupBel1_summary.bed.fa");
open(SEQ,"CRM.fa");


    $ll1=<CJF>;
    $ll2=<CJF>;
    $lcj=$ll1.$ll2;
    $ll1=<CPF>;
    $ll2=<CPF>;
    $lcp=$ll1.$ll2;
    $ll1=<EEF>;
    $ll2=<EEF>;
    $lee=$ll1.$ll2;
    $ll1=<GGF>;
    $ll2=<GGF>;
    $lgg=$ll1.$ll2;
    $ll1=<MMF>;
    $ll2=<MMF>;
    $lmm=$ll1.$ll2;
    $ll1=<NLF>;
    $ll2=<NLF>;
    $lnl=$ll1.$ll2;
    $ll1=<OCF>;
    $ll2=<OCF>;
    $loc=$ll1.$ll2;
    $ll1=<PTF>;
    $ll2=<PTF>;
    $lpt=$ll1.$ll2;
    $ll1=<PAF>;
    $ll2=<PAF>;
    $lpa=$ll1.$ll2;
    $ll1=<RMF>;
    $ll2=<RMF>;
    $lrm=$ll1.$ll2;
    $ll1=<RNF>;
    $ll2=<RNF>;
    $lrn=$ll1.$ll2;
    $ll1=<SAF>;
    $ll2=<SAF>;
    $lsa=$ll1.$ll2;
    $ll1=<TBF>;
    $ll2=<TBF>;
    $ltb=$ll1.$ll2;

$s=0;
while(<SEQ>){
    $s++;
    open(O,">INPUT/input$s.txt");
    $l=<SEQ>;
    print O;
    print O $l;
    
    $ll3=<CJS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lcj;
	$ll1=<CJF>;
	$ll2=<CJF>;
	$lcj=$ll1.$ll2;
    }

    $ll3=<CPS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lcp;
	$ll1=<CPF>;
	$ll2=<CPF>;
	$lcp=$ll1.$ll2;
    }

    $ll3=<EES>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lee;
	$ll1=<EEF>;
	$ll2=<EEF>;
	$lee=$ll1.$ll2;
    }

    $ll3=<GGS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lgg;
	$ll1=<GGF>;
	$ll2=<GGF>;
	$lgg=$ll1.$ll2;
    }

    $ll3=<MMS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lmm;
	$ll1=<MMF>;
	$ll2=<MMF>;
	$lmm=$ll1.$ll2;
    }
    
    $ll3=<NLS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lnl;
	$ll1=<NLF>;
	$ll2=<NLF>;
	$lnl=$ll1.$ll2;
    }
    
    $ll3=<OCS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $loc;
	$ll1=<OCF>;
	$ll2=<OCF>;
	$loc=$ll1.$ll2;
    }
    
    $ll3=<PTS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lpt;
	$ll1=<PTF>;
	$ll2=<PTF>;
	$lpt=$ll1.$ll2;
    }
    
    $ll3=<PAS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lpa;
	$ll1=<PAF>;
	$ll2=<PAF>;
	$lpa=$ll1.$ll2;
    }
    
    $ll3=<RMS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lrm;
	$ll1=<RMF>;
	$ll2=<RMF>;
	$lrm=$ll1.$ll2;
    }
    
    $ll3=<RNS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lrn;
	$ll1=<RNF>;
	$ll2=<RNF>;
	$lrn=$ll1.$ll2;
    }
    
    $ll3=<SAS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $lsa;
	$ll1=<SAF>;
	$ll2=<SAF>;
	$lsa=$ll1.$ll2;
    }
    
    $ll3=<TBS>;
    @abc=split(/\s+/,$ll3);
    if($abc[1] eq "NA"){
	print O ">naseq\nNNNNN\n";
    }else{
	print O $ltb;
	$ll1=<TBF>;
	$ll2=<TBF>;
	$ltb=$ll1.$ll2;
    }
}

    
