#!/bin/bash

# year
year=2021
# start and end month
month_a=1
month_z=12
# start and end day
day_a=1
day_z=31

# initialise month and day
month=$month_a
day=$day_a

# main code

while [ $month -le $month_z ]
do
	if [ $month -ge 1 ] && [ $month -le 9 ]
	then
		month=0$month
	fi

while [ $day -le $day_z ]
do
	if [ $day -ge 1 ] && [ $day -le 9 ]
	then
		day=0$day
	else [ $day -ge 10 ]
		day=$day
	fi

	name=$year-$month-$day
	file=*$year$month$day*.mkv

#	echo $day
	echo $name

#	mkdir $nameX
#	echo "make directory $name"
#	mv $fileX $nameX
#	echo "move $file to $name"

	day=$((10#$day + 1))	# increment day value
done

day=$day_a			# reset day value
month=$((10#$month + 1))	# increment month value

done
