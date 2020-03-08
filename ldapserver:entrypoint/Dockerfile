# ldapserver
FROM fedora:27
LABEL version="1.0"
LABEL author="Miguel Amorós"
LABEL subject="ldapserver entrypoint"
RUN dnf install -y openldap-servers openldap-clients procps vim tree
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
ENTRYPOINT ["/opt/docker/startup.sh"]
