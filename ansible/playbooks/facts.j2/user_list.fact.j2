#!/usr/bin/env python

"""
Print all the users and their login shells
"""

from __future__ import print_function
import pwd
import os
import json
from pprint import pprint
# import argparse # Not loaded on some hosts and not actually needed

# Get the users from /etc/passwd
def getusers():

    users = sorted(pwd.getpwall())

#    print (len(users)) 
    i = 0

    print ('{\n\t"user_login": [')
    for user in users:
        i = i +1

# Tried this as ansible template: - doesn't work with this either
#        print('\t{{\n\t\t"pw_name": "{0:s}",\n\t\t"pw_passwd": "{2:s}",\n\t\t"pw_shell": "{1:s}",\n\t\t"pw_uid": "{3:d}",\n\t\t"pw_gid": "{4:d}"\n'.format(user.pw_name, user.pw_shell, user.pw_passwd, user.pw_uid, user.pw_gid, user.pw_dir, user.pw_gecos))
#
# TODO - convert this to use json output

        print('\t{{\n'
              '\t\t"pw_name": "{0:s}",\n'
              '\t\t"pw_passwd": "{2:s}",\n'
              '\t\t"pw_shell": "{1:s}",\n'
              '\t\t"pw_uid": "{3:d}",\n'
              '\t\t"pw_gid": "{4:d}"\n'
              .format(user.pw_name, user.pw_shell, user.pw_passwd, user.pw_uid, user.pw_gid, user.pw_dir, user.pw_gecos))

        if i != len(users):
              print('\t},')
        else: 
              print('\t}')
    print ('\t]\n}')

#Index  Attribute       Meaning
#0      pw_name         Login name
#1      pw_passwd       Optional encrypted password
#2      pw_uid          Numerical user ID
#3      pw_gid          Numerical group ID
#4      pw_gecos        User name or comment field
#5      pw_dir          User home directory
#6      pw_shell        User command interpreter


if __name__=='__main__':
    getusers()

