#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# ------------
/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/httpd -DEFOREGROUND
