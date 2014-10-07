#!/bin/sh
port=${1-5001}
version=0.1.1

while :
do
    echo "200 OK $version" | nc -l "$port" >/dev/null
done

exit
