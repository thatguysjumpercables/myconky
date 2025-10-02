#!/bin/bash 
WEATHER=`curl -s [YOUR URL FOR WEATHER INFO HERE]`;
TEMP="`echo "${WEATHER}" | grep 'Temperature' | cut -d ':' -f2`";
SKY=`echo "${WEATHER}" | grep 'Sky conditions' | cut -d " " -f3`;
WEA=`echo "${WEATHER}" | grep 'Relative Humidity' | cut -c 20-24`;
WIND=`echo "${WEATHER}" | grep "Wind" | cut -d ':' -f1,3 --complement`;
CON=`echo "${WEATHER}" | grep "Weather" | cut -d " " -f2`;
VIS=`echo "${WEATHER}" | grep "Visibility"| cut -d " " -f2`;

if [ -z "$TEMP" ]; then
	cat [YOUR PATH HERE]
	exit;
fi
TEMP="${TEMP}"
if [ -n "$SKY" ]; then
	TEMP="${TEMP}, ${SKY}"
fi
if [ -n "$WEA" ]; then
	TEMP="${TEMP},	${WEA}"
fi
if [ -n "$WIND" ]; then
	TEMP="${TEMP},	${WIND}"
fi
if [ -n "$CON" ]; then
	TEMP="${TEMP},	${CON}"
fi
if [ -n "$VIS" ]; then
	TEMP="${TEMP},	${VIS} miles"

fi
echo ${TEMP} > [YOUR PATH HERE]
echo ${TEMP}
