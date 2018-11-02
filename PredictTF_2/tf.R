# July 2013 by BH
#
# The script functions to compute the correlation of each TF-Promoter pair
# given the activity profiles of all TF and promoters.
#
# Input: all_tf.txt and all_pairs.txt
# Output: Result/tpc-result.txt

#!/usr/bin/env Rscript

a=read.table('all_tf.txt')
b=read.table('all_pairs.txt')
c=NULL

aa=t(a[,2:12])
bb=t(b[,8:18])
for(i in 1:length(b[,1])){
t1=cor(aa[,5*i-4],bb[,i])
t2=cor(aa[,5*i-3],bb[,i])
t3=cor(aa[,5*i-2],bb[,i])
t4=cor(aa[,5*i-1],bb[,i])
t5=cor(aa[,5*i],bb[,i])
tmp=sum(t1,t2,t3,t4,t5)/5
c=c(c,tmp)
}

write.table(c,'Result/tpc-result.txt',col.names=F,row.names=F)
