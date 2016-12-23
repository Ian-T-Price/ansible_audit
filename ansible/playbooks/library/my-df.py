#!/usr/bin/env python

import subprocess
import json

hostspace = []

df = subprocess.Popen(["df", "-P", "-T", "-H"], stdout=subprocess.PIPE)
output = df.communicate()[0]

print(output)

for line in output.split("\n")[1:]:
    if len(line):
        try:
            device, type, size, used, available, percent, mountpoint = line.split()
            hostspace.append(dict(mountpoint=mountpoint, available=available, type=type))
        except:
            pass

print(json.dumps(dict(df_space=hostspace), indent=2))

