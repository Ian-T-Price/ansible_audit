#!/usr/bin/env python
#
# program to parse the files in the /etc/sudoers.d
#
# python 2.x only

with open('/etc/sudoers') as file:

    line_lst = []
    for line in file:
        if not ( line.startswith(('Defau', '\n', '#'), 0, 5) ) :
                line_lst = line_lst + [ line ]

    print ('{\n\t"sudoers_file": [')
    map_list=[]
    for x,y in enumerate(line_lst):
        map_list.append(y)
        print('\t{{\n\t\t"sudoer_grp": "{}"').format(map_list[x].rstrip())
        if (x + 1 != len(line_lst)) :
              print('\t},')
        else:
              print('\t}')
    print ('\t]\n}')

