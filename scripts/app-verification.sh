#!/bin/bash
URL="localhost:8080/restservice/hello/someone"
retry=0

until [ $retry -ge 10 ]
do
	if curl -s -I $URL | grep "200 OK"
	then
		echo "Application running"
		exit 0
	fi

	retry=$[$retry+1]
	sleep 20
done

echo "Application did not response".
exit 1
