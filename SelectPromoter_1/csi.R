# July 2013 by BH
#
# The script functions to compute the correlation of each candidate EP pair
# given the activity profiles of all enhancers and promoters.
#
# Input: CRM.sig.txt and all_pairs.txt
# Output: Result/epc-result.txt


#!/usr/bin/env Rscript

a=read.table('all_crm_csi.txt')
b=read.table('all_pairs.txt')
c=NULL

aa=t(a[,1:11])
bb=t(b[,8:18])

for(i in 1:length(b[,1])){
tmp=cor(aa[,i],bb[,i])
c=c(c,tmp)
}

write.table(c,'Result/epc-result.txt',col.names=F,row.names=F)
