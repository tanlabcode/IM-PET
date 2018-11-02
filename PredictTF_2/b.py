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

SEQ=open('/Volumes/Users/bihe/Genomes/Test/CRM1.fa','r')
OUT=open('/Volumes/Users/bihe/Genomes/Test/TF/'+sys.argv[1]+'.rst','w')
seq=SEQ.readline()
while seq:
    seq=SEQ.readline()
    seq=seq[:-1]
    Len_seq=len(seq)
    PWM=open('/Volumes/Users/bihe/Genomes/PredictTF_2/motif/'+sys.argv[1],'r')
    l=PWM.readline();
    l=int(l)
    M=[[0]*l]*4
    for i in range(4):
        a=PWM.readline()
        a=a[:-1]
        M[i]=a.split('\t')
    Len_motif=len(M[0])
    ss=0
    for i in range(Len_seq-Len_motif+1):
        ss=ss+score(seq[i:i+Len_motif],M)
            
    #OUT=open('TF/'+sys.argv[1]+'.rst','a')
    print >> OUT, ss,'\n',
    #OUT.close()
    
    seq=SEQ.readline()

