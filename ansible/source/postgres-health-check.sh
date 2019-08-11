#!/bin/bash


while :
do

	has_cluster_ip=$(ip a | grep "{{ cluster_ip }}" | wc -l)

	if [[ ${has_cluster_ip} > 0 ]]; then
		systemctl start postgresql
	else
		systemctl stop postgresql
	fi

	sleep .1

done
