#!/bin/bash

echo '##########################################################################'
echo '########### About to run clean-yum-cache.sh script #######################'
echo '##########################################################################'

yum clean all || exit 1

systemctl stop NetworkManager || exit 1
systemctl restart network || exit 1
systemctl start NetworkManager || exit 1

ip a || exit 1

