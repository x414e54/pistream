# http://www.linux-projects.org/modules/sections/index.php?op=viewarticle&artid=14
wget http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc && sudo apt-key add ./lrkey.asc
echo "deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/ wheezy main" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install uv4l uv4l-raspicam
sudo apt-get install uv4l-raspicam-extras

echo "Please enter your justin-tv key"
read key
echo "$key" >~/.twitch_key
