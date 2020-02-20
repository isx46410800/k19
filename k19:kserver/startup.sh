#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------
#instalacio / preparacio
/opt/docker/install.sh && echo "Install Ok"

# activar els serveis
/usr/sbin/krb5kdc  && echo "krb5kdc Ok"
/usr/sbin/kadmind  && echo "kadmind  Ok"
