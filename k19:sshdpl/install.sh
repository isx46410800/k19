#! /bin/bash
# @edt ASIX M11 2019-2020
# instal.lacio
# -------------------------------------

# creacio usuaris locals amb passwd
useradd local01
useradd local02
useradd local03
useradd local04
useradd local05
useradd local06
echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03
echo "local04" | passwd --stdin local04
echo "local05" | passwd --stdin local05
echo "local06" | passwd --stdin local06

#creacio usuaris unix sense passwd
#useradd kuser01
#useradd kuser02
#useradd kuser03
#useradd kuser04
#useradd kuser05
#useradd kuser06

#configuracio kerberos ldap sshd
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/ldap.conf /etc/openldap/ldap.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/sshd_config /etc/ssh/sshd_config
cp /opt/docker/ssh_config /etc/ssh/ssh_config

#authconfig automatic de ldap y keberos
bash /opt/docker/auth.sh

#configuracio client kerberos
cp /opt/docker/krb5.conf /etc/krb5.conf

#copia de claus ssh y ssh/kerberos
/usr/bin/ssh-keygen -A
kadmin -p pau -w kpau -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"

#configuracio de pam
#cp /opt/docker/system-auth /etc/pam.d/system-auth
