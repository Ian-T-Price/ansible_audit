## This awk file outputs the /etc/passwd file in json

# 'BEGIN{ while ( (getline dummy < ARGV[1]) > 0) max++; close(ARGV[1])} FNR == max { print "Final line:",$0 }' file

BEGIN   {
          while ( (getline dummy < ARGV[1]) > 0) max++; close(ARGV[1]); 
          FS=":";
#          "wc -l" | getline filesize;
#          printf "no. of lines: %s\n\n",$NR; # filesize;
          printf "{\n    \"user_list\": {";
          printf "\n       \"user\": [\n";
        }

{
# Remove ECP PRTG Monitoring traffic & selct the time
#

  if ( $7 != "/sbin/nologin" ) {

    printf "           {\n";
    printf "                \"username\": \"%s\",\n",$1;
    printf "                \"password\": \"%s\",\n",$2;
    printf "                \"user_id\": \"%s\",\n",$3;
    printf "                \"group_id\": \"%s\",\n",$4;
    printf "                \"user_id_info\": \"%s\",\n",$5;
    printf "                \"home_directory\": \"%s\",\n",$6;
    printf "                \"command_shell\": \"%s\"\n",$7;
  if ( FNR == max ) { 
    printf "         %s %s  }\n",FNR, max;
    }
  else {
    printf "           },\n";
    }
  }
}

END     {
printf "        ]\n";
printf "    }\n";
printf "}\n";
}


# 1 Username:       It is used when user logs in. It should be between 1 and 32 characters in length.
# 2 Password:       An x character indicates that encrypted password is stored in /etc/shadow file.
# 3 User ID (UID):  Each user must be assigned a user ID (UID). UID 0 (zero) is reserved for root and UIDs 1-99 are reserved for other predefined accounts. Further UID 100-999 are reserved by system for administrative and system accounts/groups.
# 4 Group ID (GID): The primary group ID (stored in /etc/group file)
# 5 User ID Info:   The comment field. It allow you to add extra information about the users such as user's full name, phone number etc. This field use by finger command.
# 6 Home directory: The absolute path to the directory the user will be in when they log in. If this directory does not exists then users directory becomes /
# 7 Command/shell:  The absolute path of a command or shell (/bin/bash). Typically, this is a shell. Please note that it does not have to be a shell.

#{
#    "employees": {
#        "employee": [
#            {
#                "id": "1",
#                "firstName": "Tom",
#                "lastName": "Cruise",
#                "photo": "http://cdn2.gossipcenter.com/sites/default"
#            },
#            {
#                "id": "2",
#                "firstName": "Maria",
#                "lastName": "Sharapova",
#                "photo": "http://thewallmachine.com/1363603040.jpg"
#            },
#            {
#                "id": "3",
#                "firstName": "James",
#                "lastName": "Bond",
#                "photo": "http://wordpress.com/pierece_brosnan.jpg"
#            }
#        ]
#    }
#}
