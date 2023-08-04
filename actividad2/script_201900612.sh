#!/bin/bash
# Pedro Antonio Castro Calderón

# Consultando la api de Github con el usuario
response=$(curl -s "https://api.github.com/users/$GITHUB_USER")

# Obteniendo los campos que necesitamos de la api
github_user=$(echo "$response" | jq -r '.login')
user_id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Crear la carpeta de log con la fecha actual
log_folder="/tmp/$(date +'%Y%m%d')"
mkdir -p "$log_folder"

# Crear el archivo de log con el mensaje
log_file="$log_folder/saludos.log"
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at." > "$log_file"

# Imprimiendo el mensaje en pantalla
echo "Mensaje de saludo:"
cat "$log_file"

