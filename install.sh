#!/bin/sh

if [ `whoami` != 'root' ]
  then
    echo "You must be root to do this."
    exit
fi

systemctl disable apache2
systemctl disable mysql

cp webserver /bin/
chmod o+x /bin/webserver
