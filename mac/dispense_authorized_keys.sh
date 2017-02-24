export hostList=$(cat $1 |tr "\n" " ")

for server in $hostList
do
   echo "updateing " $server
   scp authorized_keys_setting root@$server:.ssh/authorized_keys
done
