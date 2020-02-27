# Version: 0.0.1
# @edt M11 2019-2020
# kerberos
# -------------------------------------
FROM fedora:27
LABEL author="Miguel Amoros"
LABEL description="KERBEROS host sshd pam ldap 2019-2020"
RUN dnf -y install krb5-workstation passwd vim procps pam_krb5 authconfig openldap-clients nss-pam-ldapd openssh-clients pam_mount openssh-server cifs-utils
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

