oldIP=$1
newIP=$2

if [ "$oldIP" = "file" ]; then
  oldIP=$(<oldIP)
  echo "$value"
fi

replaceStr="s/"$oldIP"/"$newIP"/g"

echo $replaceStr

sudo sed -i "$replaceStr" /etc/hosts
sudo sed -i "$replaceStr" /var/named/*.com
sudo sed -i "$replaceStr" /var/named/*.net
sudo sed -i "$replaceStr" /home/allen/work/lcta/*.sh

#save old ip
echo $newIP > oldIP

sudo /etc/init.d/named restart
