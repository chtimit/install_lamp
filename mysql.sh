#!/bin/bash

case $1 in
	start)
		systemctl start mysql || echo "error during startup of mysql"
		systemctl start mariadb || echo "error during startup of mariadb"
		;;
	stop)
		systemctl stop mysql || echo "error during stopping of mysql"
		systemctl stop mariadb || echo "error during stopping of mariadb"
		;;
	restart)
		systemctl restart mysql || echo "error during restarting of mysql"
		systemctl restart mariadb || echo "error during restarting of mariadb"
		;;
	status)
		systemctl status mysql || echo "couldn't access status of mysql"
		systemctl status mariadb || echo "couldn't acces status of mariadb"
		;;
esac
