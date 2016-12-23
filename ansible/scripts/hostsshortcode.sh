#!/bin/bash

# 
#
#
echo -e "\n\tHosts Short Code Key"
echo -e "\t===================="
echo -e "\t[d,p,s,u,v] [a-z] [d,m,w,t] [1-9]"
echo -e "\t    |       |       |       |"
echo -e "\t    |       |       |       |"
echo -e "\t    |       |       |       ------ Simple index number"
echo -e "\t    |       |       |"
echo -e "\t    |       |       -------------- d:Database, m:Management, w:Web, s:Sales Order Processing, t:Testing"
echo -e "\t    |       |"
echo -e "\t    |       ---------------------- Stack Designator A, B, C, D, E, F, L & W are in use, some for Windows stacks"
echo -e "\t    |"
echo -e "\t    ------------------------------ d:DR, p:Production, s:physical Stacks, u:User acceptance testing, v:deV"

echo -e "\n\t    Exceptions: e1u1 : ecp-01-ubu1 - Ad-hoc Ubuntu play server."
echo -e "\t    Exceptions: pcm1 : Prod-ConfMan-01 - c refers to Conf and not stack."
echo -e "\t    Exceptions: slb* : Physical Load Balancers\n"

awk '/^Host[^ n]/ {printf "%s : ", substr($2,1,length($2)) ;  getline ; getline ; printf " %s\n", $2 }' /opt/git/Ecommerce-Config/ssh_itp/config|sort
