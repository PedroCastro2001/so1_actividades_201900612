### Sistemas Operativos 1
### Pedro Antonio Castro Calderón
### 201900612

&nbsp;
## Actividad 4 -  Systemd Unit


##### 1. Crear script para imprimir el saludo cada cierto tiempo.

        #!/bin/bash
        #Pedro Antonio Castro Calderón - 201900612

        while true; do
            echo "Hola mundo!"
            echo "Fecha actual: $(date)"
            sleep 60
        done

##### 2. Dar permisos de ejecución al script

        chmod +x script201900612.sh


##### 3. Crear un archivo de unidad systemd.

        sudo nano /etc/systemd/system/actividad4.service


##### 4. Agregar el contenido al archivo _actividad4.service_ y guardarlo.

        [Unit]
        Description=Servicio Actividad 4 Sistemas Operativos 1

        [Service]
        ExecStart=/home/pedrocastro/Universidad/script201900612.sh

        [Install]
        WantedBy=multi-user.target


##### 5. Recargar systemd para que detecte los cambios.

        sudo systemctl daemon-reload


##### 6. Iniciar el servicio.

        sudo systemctl start actividad4.service

##### 7. Habilitar el servicio 

        sudo systemctl enable actividad4.service

##### 8. Ver la salida del servicio.

        sudo journalctl -u actividad4.service

