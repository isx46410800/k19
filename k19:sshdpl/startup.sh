#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------
#instalacio / preparacio
/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/nslcd && echo "nslcd Ok"
/usr/sbin/nscd && echo "nscd Ok"
/usr/sbin/sshd -D
