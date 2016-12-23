#!/bin/bash

FILEDIR=/sftp/sftp

cd $FILEDIR

for i in $( ls $FILEDIR ) ;
	do
	  
	  FILEEXT="${i##*.}"

	  if [ "$FILEEXT" == "md5" ] 
		then
		    echo "MD5 File exists" 
		    cat *.md5 | mail -s "::SFTP:: ${i%.*} file processed" ian.price@eurocarparts.com,leonardo.castano@eurocarparts.com
		    rm -f "${i%.*}"
		    rm -f $i
	  else 
		    echo "No MD5 file exists"
	  fi
	done


# FILE="example.tar.gz"

# echo "${FILE%%.*}"
#	example

# echo "${FILE%.*}"
#	example.tar

# echo "${FILE#*.}"
#	tar.gz

# echo "${FILE##*.}"
#	gz
