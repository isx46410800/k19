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
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kjulia julia"
kadmin.local -q "addprinc -pw kadmin admin"
kadmin.local -q "addprinc -pw kmiguel miguel"
kadmin.local -q "addprinc -pw kuser01 kuser01"
kadmin.local -q "addprinc -pw kuser02 kuser02"
kadmin.local -q "addprinc -pw kuser03 kuser03"
kadmin.local -q "addprinc -pw kuser04 kuser04"
kadmin.local -q "addprinc -pw kuser05 kuser05"
kadmin.local -q "addprinc -pw kuser06 kuser06"
