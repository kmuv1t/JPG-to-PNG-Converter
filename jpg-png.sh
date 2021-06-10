#!/bin/bash

IMG_PATH=$1

img_converter(){
cd $IMG_PATH
if [ ! -d $IMG_PATH ]
then
	echo "Invalid Directory"
	exit
fi

echo "Converting..."

if [ ! -d png ]
then
	mkdir png
fi

for images in *.jpg
do
	local no_img_ext=$(ls $images | awk -F. '{ print $1 }')
	convert $no_img_ext.jpg png/$no_img_ext.png
done
}

img_converter 2>>converter.log

if [ $? -eq 0 ]
then
	echo "Conversion Successful, Images saved in /png."
else
	echo "Conversion Failed, See the log for more information."
fi
