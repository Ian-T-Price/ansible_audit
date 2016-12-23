awk '/^Host[^ n]/ {printf "%s[1:%s]\n", substr($2,1,length($2)-1), substr($2,length($2)) }' /home/ian.price/.ssh/config|sort
