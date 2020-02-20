# k19
creación de docker kerberos

## kserver
es nuestro servidor kerberos, el que proporciona el 'password' a los usuarios sin contraseña que tienen un principal en este server. No es un password en sí, sinó una clave algorítmico que guarda el password

## khost
es nuestro client kerberos el cual no tiene ningun usuario. Cuando logueamos sesion con un user que tenga un principal en el server, éste nos proporcionará el ticket kerberos para iniciar sesión.

## khostp
es nuestro client kerberos el cual tiene usarios locales con contraseña y otros que no. El system-auth del pam es configurado para que nos autentique de dos maneras:
- Cuando logueamos sesion con un user que tenga un principal en el server, éste nos proporcionará el ticket kerberos para iniciar sesión.
- Cuando logueamos sesión con un user que tengas password local, nos logueará a través del /etc/passwd
