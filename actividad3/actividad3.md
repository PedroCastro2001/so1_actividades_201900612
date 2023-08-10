#### Pedro Antonio Castro Calderón
#### 201900612
&nbsp;

## Actividad 3

&nbsp;
### Parte 1 : Gestión de Usuarios

##### 1.  Creación de Usuarios: Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`. 

- Comando utilizado para la creación: 

        sudo adduser nombre_usuario

- Salida: 

        Añadiendo el usuario `usuario2' ...
        Añadiendo el nuevo grupo `usuario2' (1003) ...
        Añadiendo el nuevo usuario `usuario2' (1002) con grupo `usuario2' ...
        Creando el directorio personal `/home/usuario2' ...
        Copiando los ficheros desde `/etc/skel' ...
        Nueva contraseña: 
        Vuelva a escribir la nueva contraseña: 
        passwd: contraseña actualizada correctamente
        Cambiando la información de usuario para usuario2
        Introduzca el nuevo valor, o presione INTRO para el predeterminado
            Nombre completo []: Usuario Dos
            Número de habitación []: 
            Teléfono del trabajo []: 
            Teléfono de casa []: 
            Otro []: 
        ¿Es correcta la información? [S/n] s


&nbsp;
##### 2. Asignación de Contraseñas: Establece una nueva contraseñas para cada usuario creado.

- Comando utilizado:

        sudo passwd usuario1

- Salida: 

        Nueva contraseña: 
        Vuelva a escribir la nueva contraseña: 
        passwd: contraseña actualizada correctamente

&nbsp;
##### 3. Información de Usuarios: Muestra la información de `usuario1` usando el comando `id`.

- Comando utilizado:

        id usuario1

- Salida:

        uid=1001(usuario1) gid=1002(usuario1) grupos=1002(usuario1)


&nbsp;
##### 4. Eliminación de Usuarios: Elimina `usuario3`, pero conserva su directorio principal.

- Comando utilizado: 

        sudo userdel usuario3
&nbsp;
&nbsp;

### Parte 2 : Gestión de Grupos

##### 1. Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.

- Comandos utilizados: 

        sudo addgroup grupo1
        sudo addgroup grupo2

- Salidas respectivas:

        Añadiendo el grupo `grupo1' (GID 1004) ...
        Hecho.

        Añadiendo el grupo `grupo2' (GID 1005) ...
        Hecho.
&nbsp;


##### 2. Agregar Usuarios a Grupos: Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.

- Comandos utilizados: 

        sudo usermod -aG grupo1 usuario1
        sudo usermod -aG grupo2 usuario2
&nbsp;

##### 3. Verificar Membresía: Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.

- Comandos utilizados:

        groups usuario1
        groups usuario2

- Salidas respectivas: 

        usuario1 : usuario1 grupo1
        usuario2 : usuario2 grupo2
&nbsp;

##### 4. Eliminar Grupo: Elimina `grupo2`.

- Comando utilizado:

        sudo delgroup grupo2


- Salida:

        Eliminando al grupo `grupo2' ...
        Hecho.
&nbsp;
&nbsp;


### Parte 3 : Gestión de Permisos


##### 1. Creación de Archivos y Directorios:

##### Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.

- Comandos utilizados:

        echo "Este es el archivo 1" > ~/archivo1.txt
nbsp;

##### Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.

- Comandos utilizados: 

        mkdir ~/directorio1
        echo "Contenido del archivo 2" > ~/directorio1/archivo2.txt
&nbsp;


##### 2. Verificar Permisos: Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

- Comandos utilizados:

        ls -l ~/archivo1.txt
        ls -ld ~/directorio1


- Salidas respectivas:

        -rw-rw-r-- 1 usuario1 usuario1 21 ago  9 18:13 /home/usuario1/archivo1.txt

        drwxrwxr-x 2 usuario1 usuario1 4096 ago  9 18:14 /home/usuario1/directorio1
&nbsp;

##### 3. Modificar Permisos usando `chmod` con Modo Numérico: Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.

- Comando utilizado:

        chmod 640 ~/archivo1.txt
&nbsp;

##### 4. Modificar Permisos usando `chmod` con Modo Simbólico: Agrega permiso de ejecución al propietario del `archivo2.txt`.

- Comando utilizado: 

        chmod u+x ~/directorio1/archivo2.txt
&nbsp;

##### 5. Cambiar el Grupo Propietario: Cambia el grupo propietario de `archivo2.txt` a `grupo1`.

- Comando utilizado:

        chown :grupo1 ~/directorio1/archivo2.txt
&nbsp;


##### 6. Configurar Permisos de Directorio: Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.

- Comando utilizado:

        chmod 750 ~/directorio1
&nbsp;

##### 7. Comprobación de Acceso: Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

- Comandos utilizados:

        cat /home/usuario1/archivo1.txt
        cat /home/usuario1/directorio1/archivo2.txt


- Salidas respectivas:

        cat: /home/usuario1/archivo1.txt: Permiso denegado

        cat: /home/usuario1/directorio1/archivo2.txt: Permiso denegado
&nbsp;

##### 8. Verificación Final: Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.
    
- Comandos utilizados:

        ls -l ~/archivo1.txt
        ls -l ~/directorio1/archivo2.txt
        ls -ld ~/directorio1



- Salidas respectivas:

        -rw-r----- 1 usuario1 usuario1 21 ago  9 18:13 /home/usuario1/archivo1.txt
        -rwxrw-r-- 1 usuario1 grupo1 24 ago  9 18:14 /home/usuario1/directorio1/archivo2.txt
        drwxr-x--- 2 usuario1 usuario1 4096 ago  9 18:14 /home/usuario1/directorio1




