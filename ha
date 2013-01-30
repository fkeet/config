#!/bin/bash

#Load defaults
HEADER="/root/scripts/scriptheader"
if [ -f "$HEADER" ];then
	. "$HEADER"
else
	echo "Missing file ($HEADER). Stopping."
	exit 1;
fi

###
#Override variables here
###

###
#Declare functions here
###

###
#Main script start
###

##Test parameters
if [ "$1" == "" ];then
	$EC "Missing parameter"
	$EC "Use: $(basename $0) <hostname>"
	exit 1;
fi

MAC=`$GM mac $1`
if [ "$MAC" == "" ];then
	COUNT=`$GM find $1|$WC -l`
	if [ $COUNT -ne 1 ];then
		$EC $EC_PARM "${S_WARN}Unable to get mac from DB. These are your options:${R}"
		if [ $COUNT -gt 1 ];then
			$GM find $1
		else
			$EC $EC_PARM "\t**None**"
		fi
		exit 2;
	else
		MAC=`$GM find $1|$AW '{print $6}'`
		$EC $MAC|$GR -i "..:..:..:..:..:.." > /dev/null
		if [ $? -ne 0 ];then
			$EC "${S_WARN}Unable to get mac from DB. These are your options:${R}"
			if [ $COUNT -gt 1 ];then
				$GM find $1
			else
				$EC $EC_PARM "\t**None**"
			fi
			exit 2;
		fi
	fi
fi

$IPT -vnL $ACCESS_CHAIN|$AW '{print $11}'|$GR -i $MAC > /dev/null;
if [ $? -eq 0 ];then 
	$EC "Yes"
else
	$EC "No"
fi
