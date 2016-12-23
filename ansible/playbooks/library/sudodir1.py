#!/usr/bin/python
# -*- coding: utf-8 -*-
#
# Author: Ian T Price <Ian.T.Price@gmail.com>
#
# Ansible module to return each active line in /etc/sudoers file.
#

#---- Documentation Start ----------------------------------------------------#
DOCUMENTATION = '''
---
version_added: "1.0"
module: sudodir
short_description: sudodir
description:
  - This module returns/displays the active lines in /etc/sudoers
options:
  hosts:
    description:
      host to check
  success:
    description:
      Returns the active lines in sudoers file
    required: false
    default: yes
    choices: [ "yes", "no" ]
notes:
  - None as yet
    required: true
requirements: []
author: Ian T Price <Ian.T.Price@gmail.com>
'''

EXAMPLES = '''
- name: "Show all sudoers"
  sudodir: hosts={{ hosts }}
'''

#---- Logic Start ------------------------------------------------------------#

def main():
    # Note: 'AnsibleModule' is an Ansible utility imported below
#    module = AnsibleModule(
#        argument_spec=dict(
#            sudodir=dict(required=False),
#            success = dict(default=True, type='bool'),
#        ),
#        supports_check_mode=True
#    )
    success = module.params['success']
    text = module.params['sudodir']
    if success:
      module.exit_json(text=text)
    else:
      module.fail_json(msg=text)

#---- Import Ansible Utilities (Ansible Framework) ---------------------------#
from ansible.module_utils.basic import *
main()

