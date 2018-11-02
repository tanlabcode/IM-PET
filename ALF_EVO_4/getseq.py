# Make sure to prepare and set the correct path to the genomic sequences

#!/usr/bin/python
import sys

IN=open(sys.argv[1],'r')
OUT=open(sys.argv[1]+'.fa','w')
a=IN.readline()
while(a):
    a=a[:-1]
    aa=a.split('\t')
    SEQ=open('/Volumes/Users/bihe/Genomes/'+sys.argv[2]+'/'+aa[0],'r')#set the correct path to the genomic sequences here
    s=SEQ.read(int(aa[1]))
    s=SEQ.read(int(aa[2])-int(aa[1])+1)
    print >> OUT, '>'+aa[0]+'-'+aa[1]+'-'+aa[2]+'\n'+s
    a=IN.readline()
