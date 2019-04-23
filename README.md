# IM-PET

IM-PET Docker is now available at 

https://hub.docker.com/r/hebing8812/im-pet

##I. Prerequisite Software for IM-PET:

	To run IM-PET, following software are required, and the recommended versions are listed:
	Perl v5.10.1 built for x86_64 Linux system
	Java v1.6.0_45
	Python v2.6.6.

IM-PET uses three third-party helper software, LiftOver, ALF v1.0, and Weka. We have included the executable files of LiftOver and ALF v1.0 in the package. Weka software package has been downloaded under IM-PET folder. To use Weka, users need to first set correct java class path by typing in:
export CLASSPATH=/path/to/weka.jar:$CLASSPATH 
Before running IM-PET, users need to make sure that third-party software are runnable. To check this, one can type in the following command lines under the IM-PET folder:
	./LiftOver_3/liftOver
	./ALF_EVO_4/alf –h
	java weka.classifiers.trees.RandomForest

##II. Preparation of the input files

1) A tab-delineate file indicate the enhancer positions. 
   Format: [chr]\t[enhancer center position]\t[enhancer score]
2) A tab-delineate file indicate the enhancer signals in genome-wide.
   Format: [chr]\t[position]\t[signal]
*Above 2 files are the output files directly from CSI-ANN. CSI-ANN takes as input ChIP-Seq data of 3 histone modifications (H3K4me1, H3K4me3, H3K27ac) to predict tissue-specific enhancers. The input of CSI-ANN are bowtie aligned files.
3) A tab-delineate file indicate the gene expression values.
   Format: [gene name]\t[expression value]
*We recommend using Tophat and Cufflinks to process the RNA-Seq data.

A set of example files are included in the folder “INPUT_example”.

##III. Usage:

perl IM-PET.pl -p [Path to IM-PET] -e [Enhancer positions] -s [Enhancer signals] -x [Expression] 
