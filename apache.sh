#!/bin/bash

case $1 in
	start)
		systemctl start apache2 || echo "error during startup of mysql"
		;;
	stop)
		systemctl stop apache2 || echo "error during stopping of mysql"
		;;
	restart)
		systemctl restart apache2 || echo "error during restarting of mysql"
		;;
	status)
		systemctl status apache2 || echo "status of apache2 couldn't be accessed"
		php --version || echo "version of php couldn't be accessed"
		;;
esac
