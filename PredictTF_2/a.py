# July 2013 by BH
# Given TF matrix and genomic sequence
# The script compute binding probablity

#!/usr/bin/python
import sys
import math
import random

def score(sequ,motif):
    sequ=sequ.upper()
    Code={'A':0,'C':1,'G':2,'T':3}
    s=0
    for i in range(len(sequ)):
        if sequ[i]=='N':
            random.seed()
            ii=random.randint(0,3)
        else:
            ii=Code[sequ[i]]
        b=float(motif[ii][i])
        s=s+b
    es=math.exp(s)
    return(es)

SEQ=open('seq.txt','r')
#seq=SEQ.readline()
#seq=seq[:-1]
#Len_seq=len(seq)
PWM=open('motif.txt','r')
l=PWM.readline();
l=int(l)
#print l;
M=[[0]*l]*4
for i in range(4):
    a=PWM.readline()
    a=a[:-1]
    M[i]=a.split('\t')
Len_motif=len(M[0])
seq=SEQ.read(Len_motif)
ss=score(seq,M)
a=SEQ.read(1)
while(a):
    if a=='\n':
        break
    seq=seq[1:]+a
    ss=ss+score(seq,M)
    a=SEQ.read(1)

OUT=open('TF_pred_result.txt','a')
print >> OUT, ss,'\t',
OUT.close()
