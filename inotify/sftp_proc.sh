#!/bin/bash

while true #run indefinitely
	do 
	    inotifywait -qq -e close_write /sftp/sftp && /bin/bash /sftp/scripts/sftp_action.sh
	done
