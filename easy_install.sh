#!/bin/bash
echo "Installing all of the Python Requirements for QSTK"
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

easy_install numpy
easy_install scipy
easy_install matpolotlib
easy_install dateutil
easy_install pandas
easy_install epydoc
easy_install distribute
easy_install qt4
