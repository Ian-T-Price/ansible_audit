#!/usr/bin/env python

"""
Print dict
"""

from __future__ import print_function
from pprint import pprint
import json

user_list = [["line1", "firstline"],["line2", "secondline"]] 

#print('{}'.format(user_list))

person = [["Marc","Mayer"],["17, Oxford Str", "12345","London"],"07876-7876"]

#print('{}'.format(person))


print('{}'.json.dumps(dict(user_list=user_list), indent=2))


