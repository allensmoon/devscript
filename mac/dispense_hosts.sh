export hostList=$(cat $1 |tr "\n" " ")

for server in $hostList
do
   echo "updateing " $server
   scp hosts_setting root@$server:/etc/hosts
done
