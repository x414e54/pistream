sudo apt-get update
sudo apt-get install libav-tools python

if [ ! -e "~/.twitch_key" ]; then
  echo "Please enter your justin-tv key"
  read key
  echo "$key" > ~/.twitch_key
fi

wget http://downloads.sourceforge.net/project/s3tools/s3cmd/1.5.0-beta1/s3cmd-1.5.0-beta1.tar.gz
tar xvfz s3cmd-1.5.0-beta1.tar.gz

