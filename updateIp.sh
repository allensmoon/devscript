oldIP=$1
newIP=$2

replaceStr="s/"$oldIP"/"$newIP"/g"

echo $replaceStr

sed -i "$replaceStr" /etc/hosts
sed -i "$replaceStr" /var/named/*.com
sed -i "$replaceStr" /var/named/*.net
sed -i "$replaceStr" /home/allen/work/lcta/*.sh

sudo /etc/init.d/named restart
