sudo apt-get update
sudo apt-get install libav-tools python

wget https://github.com/x414e54/s3cmd/releases/download/test/s3cmd.tar.gz
tar xvfz s3cmd.tar.gz

echo "*/15 * * * * ~/code/pistream/get_schedule.sh" | crontab -
