#!/bin/bash
echo "Installing all of the Python Requirements for QSTK"

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

hash python  &> /dev/null
if [ $? -eq 1 ]; then
	echo >&2 "Python is not installed on this system. You must install it first"
	exit 1
fi

hash easy_install &> /dev/null
if [ $? -eq 1 ]; then
	echo >&2 "Python setup tools: easy_install, not found, downloading and installing"

	wget http://peak.telecommunity.com/dist/ez_setup.py
	python z_setup.py
	rm ez_setup.py
fi


easy_install numpy
easy_install scipy
easy_install matpolotlib
easy_install dateutil
easy_install pandas
easy_install epydoc
easy_install distribute
easy_install qt4
