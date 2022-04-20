#!/usr/bin/bash

CDATE=$(date +%y%m%d)
DFILE=/home/shreeshkv/projects/pacman-hook/data
LDATE=$(grep 'LDATE' /home/shreeshkv/projects/pacman-hook/data | cut -d'=' -f2)
#DIFF=30
DIFF=$(grep 'DIFF' /home/shreeshkv/projects/pacman-hook/data | cut -d'=' -f2)
NDATE=$(expr $LDATE + $DIFF + 1)


if [[ $NDATE -eq $CDATE ]]
then
	echo '****Continuing with update****'
	rm $HOME/projects/pacman-hook/data
	echo LDATE=$CDATE >> data
	echo DIFF=$DIFF >> data
else
	echo '****Killing pacman****'
	pkill -9 pacman
	sudo rm /var/lib/pacman/db.lck &> /dev/null
fi
#echo $NDATE

