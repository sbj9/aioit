#!/bin/bash

if ! dnf -q httpd &>/dev/null; then
	yum install -y httpd
else
	yum update -y httpd
fi


systemctl restart httpd
