#!/bin/bash

echo "Please enter time (unix)"
read time
mkdir created
file=created/$time.sh
echo "#!/bin/bash" > $file 

echo "Twitch, Justin or S3 (t/j/s)?"
read switch

if [ "$switch" == "t" ]; then
	echo "Please enter your twitch key"
	read key
	echo "STREAM_KEY=$key" >> $file
	cat twitch.in >> $file
elif [ "$switch" == "j" ]; then
	echo "Please enter your justin-tv key"
	read key
	echo "STREAM_KEY=$key" >> $file
	cat justin.in >> $file
elif [ "$switch" == "s" ]; then
	echo "Please enter bucket + location"
	read bucket
	echo "Please enter your access id"
	read id
	echo "ACCESS_KEY=$key" >> $file
	echo "Please enter your access key"
	read key
	echo "ACCESS_KEY=$key" >> $file
	cat s3.in >> $file
else 
	echo "Error"
fi
