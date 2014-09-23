#!/bin/bash
# Start MySQL, adapted from https://github.com/tutumcloud/tutum-docker-mysql/blob/master/run.sh

VOLUME_HOME="/var/lib/mysql"
INSTALLED_MYSQL_DATA="/var/lib/mysql-boot/"

if [[ ! -d $VOLUME_HOME/mysql ]]; then
	echo "=> An empty or uninitialized MySQL volume is detected in $VOLUME_HOME"
	echo "=> Installing MySQL ..."
	cp -pR $INSTALLED_MYSQL_DATA/* $VOLUME_HOME/
else
	echo "=> Using an existing volume of MySQL"
fi

exec /usr/bin/mysqld_safe
