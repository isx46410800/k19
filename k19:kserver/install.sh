#! /bin/bash
# @edt ASIX M11 2019-2020
# instal.lacio
# -------------------------------------
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

#creamos bbdd
kdb5_util create -s -P masterkey

#creamos unos users principales que desde el client podremos coger ticket (pass kpere para pere)
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kmarta marta"
kadmin.local -q "addprinc -pw kmiguel miguel"
