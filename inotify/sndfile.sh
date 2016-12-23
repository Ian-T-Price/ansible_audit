#!/bin/bash

#set -x
# k8---->PCM1g/folder1----->DEST/fodler2
#
HOME=/home
k8DIR=k8
ORIG=sftp
DESTHOST=sftp@10.175.17.60
DESTDIR=/sftp/sftp
DAYTXT=`date +%Y-%m-%d"_"%H-%M-%S`

cd $HOME/$ORIG

## Create a dummy file to transfer

for ((i=1; i<=195; i++)) ;
        do
            #date +%Y-%m-%d"_"%H-%M-%S" Generating lots of text here to fill up the file"  >> $DAYTXT ;
            cat LotsOfText >> $DAYTXT 
            echo -n . 
        done

echo

# Create an MD5 CheckSum file  
## MD5=`csum -h MD5 $DAYTXT | cut -d" " -f 1`
## echo $MD5
## csum -h MD5 $DAYTXT >> `csum -h MD5 $DAY.txt | cut -d" " -f`.md5  # $MD5.md5
 
csum -h MD5 $DAYTXT > $DAYTXT.md5

#echo $HOME/$ORIG/.ssh/$ORIG"_rsa"

scp -C -i $HOME/$ORIG/.ssh/$ORIG"_rsa" $HOME/$ORIG/$DAYTXT $DESTHOST:$DESTDIR
scp -i $HOME/$ORIG/.ssh/$ORIG"_rsa" $HOME/$ORIG/$DAYTXT.md5 $DESTHOST:$DESTDIR

for i in $( ls $DAYTXT* ) ;
        do
            rm $i
        done

