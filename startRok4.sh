#!/bin/bash

DEFAULT_ENV=/rok4/default_env

#Apply default env var
while read line
do
	key=$(echo $line | awk -F "=" '{print $1}')
	if [[ -z "${!key}" ]]
	then
		echo "Use default for [$key]"
		export "$line"
	fi
done < $DEFAULT_ENV

#printenv | grep ROK4

#Refactor some variable
export ROK4_SERVICE_KEYWORDS=$(echo $ROK4_SERVICE_KEYWORDS | tr ',' '\n' | sed "s/^/<keyword>/g" | sed "s/$/<\/keyword>/g")
export ROK4_SERVICE_FORMATLIST=$(echo $ROK4_SERVICE_FORMATLIST | tr ',' '\n' | sed "s/^/<format>/g" | sed "s/$/<\/format>/g")
export ROK4_SERVICE_GLOBALCRSLIST=$(echo $ROK4_SERVICE_GLOBALCRSLIST | tr ',' '\n' | sed "s/^/<crs>/g" | sed "s/$/<\/crs>/g")


#Setup Server.conf
printenv | grep ROK4_SERVER | awk -F "=" '{print $1}' |while read key
do
	sed -i "s/$key/$(echo ${!key} | sed 's/\//\\\//g')/g" /rok4/config/server.conf
done

#Setup Serviceis.conf
printenv | grep ROK4_SERVICE | awk -F "=" '{print $1}' |while read key
do
	sed -i "s/$key/$(echo ${!key} | sed 's/\//\\\//g')/g" /rok4/config/services.conf
done

/rok4/bin/rok4 -f /rok4/config/server.conf
