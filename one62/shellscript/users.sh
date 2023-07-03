#!/bin/bash

read filename

while IFS=',' read -r username password
do
	useradd "${username}"
	echo "${username}:${password}" | chpasswd
done < "${filename}"
