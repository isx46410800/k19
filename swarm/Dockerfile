# Version: 0.0.1
# @edt M11 2019-2020
# kerberos
# -------------------------------------
FROM fedora:27
LABEL author="Miguel Amoros"
LABEL description="KERBEROS 2019-2020"
RUN dnf -y install httpd nmap
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
EXPOSE 80
CMD ["/opt/docker/startup.sh"]
