#! /bin/bash
##bash /opt/docker/install.sh
# STARTUP PER ENTRYPOINT LDAP
#-----------------------------------

# funcion start (engegar el servei ldap)
function start(){
  echo "engegant servei..."
  ulimit -n 1024
  /sbin/slapd -d0
}

# funcion initdb(inicialitzar la bbdd ldap sense dades i engegar el servei.)
function initdb(){
  rm -rf /etc/openldap/slapd.d/*
  rm -rf /var/lib/ldap/*
  echo "bbdd i configuració esborrada"
  cp /opt/docker/DB_CONFIG /var/lib/ldap/.
  slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d/
  chown -R ldap.ldap /etc/openldap/slapd.d
  chown -R ldap.ldap /var/lib/ldap
  cp /opt/docker/ldap.conf /etc/openldap/.
  echo "configuració cargada"
  start
}

# funcion initdbedt (inicialitzar la bbdd ldap amb les dades per defecte usuals i engegar el servei.)
function initdbedt(){
  rm -rf /etc/openldap/slapd.d/*
  rm -rf /var/lib/ldap/*
  echo "bbdd i configuració esborrada"
  cp /opt/docker/DB_CONFIG /var/lib/ldap/.
  slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d/
  slapadd -F /etc/openldap/slapd.d/ -l /opt/docker/edt.org.ldif
  chown -R ldap.ldap /etc/openldap/slapd.d
  chown -R ldap.ldap /var/lib/ldap
  cp /opt/docker/ldap.conf /etc/openldap/.
  echo "configuració i dades cargades"
  start
}

# funcion listdn (llistar els dn de la bdd ldap usant una comanda “slapcat | grep dn”.)
function listdn(){
  slapcat | grep dn
  echo "ordre slapcat realitzada"
}

# opcion a elegir en el entrypoint
case $1 in
  'initdb')
	  initdb;;
  'initdbedt')
	  initdbedt;;
  'listdn')
	  listdn;;
  'start')
	  start;;
  '')
	  start;;
  *)
	  eval "$1";;
esac

echo "finalitzat"
exit 0
