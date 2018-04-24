#!/bin/bash
URL="localhost:8080/restservice/hello/someone"
retry=0

until [ $retry -ge 20 ]
do
	if curl -s -I $URL | grep "200 OK"
	then
		echo "Application running"
		exit 0
	fi

	retry=$[$retry+1]
	sleep 20
	echo "Application not starting, run another attempt."
done

echo "Application did not response".
exit 1
