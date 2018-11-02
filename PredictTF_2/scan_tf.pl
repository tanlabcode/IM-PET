# July 2013 by BH
# This is a compiled script for calculating the binding probabilities of all TFs to the enhancer.

system("perl ../PredictTF_2/init.pl");#initiation
system("perl ../PredictTF_2/run.pl");#scan TF
system("perl ../PredictTF_2/cal.pl");#compute background
