#/bin/bash

cd ~/zixie/github

for file in ./*
do
	echo "=================================="
	echo $file" check start:"
	cd ~/zixie/github/$file && git status
	echo $file" check finish:"
	echo "=================================="
done