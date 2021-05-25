#!/usr/bin/env bash

echo "Install httpd Packages"

dnf install -y httpd
dnf clean all

echo "Start httpd Service"
systemctl enable --now httpd

echo "$(hostname -I)"

exit 0
