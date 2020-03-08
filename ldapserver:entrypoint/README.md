# ldapserver:entrypoint

## ASIX M11-ASO @isx46410800 Curs 2019-2020

Servidor bàsic ldap, amb organització dc=edt,dc=org,
usuaris bàsics pere, marta, anna...i grups creats
Configuració client ldap.conf: ldapserver / dc=edt,dc=org

prueba:
```
[isx46410800@localhost ldapserver:entrypoint]$ docker run --rm --name ldapserver -h ldapserver --net mynet -v ldap-config:/var/lib/ldap/ -v ldap-data:/etc/openldap/ -it isx46410800/ldapserver:entrypoint initdbedt

[isx46410800@localhost ldapserver:entrypoint]$ ldapsearch -x -LLL -h 172.19.0.2 -b 'dc=edt,dc=org'
.
.
.
dn: cn=user10,ou=usuaris,dc=edt,dc=org
objectClass: posixAccount
objectClass: inetOrgPerson
cn: user10
cn: alumne10 de 2asix de todos los santos
sn: alumne10
homePhone: 555-222-0016
mail: user10@edt.org
description: alumne de 2asix
ou: 2asix
uid: user10
uidNumber: 7010
gidNumber: 611
homeDirectory: /tmp/home/2asix/user10
userPassword:: e1NIQX1vdmY4dGEvcmVZUC91MnpqMGFmcEh0OHlFMUE9
```
