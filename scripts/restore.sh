#!/bin/bash
# scripts/restore.sh - Restaura un archivo .tar.gz específico

BACKUP_FILE=$1

if [ -z "$BACKUP_FILE" ]; then
    echo "Error: Debes especificar el nombre del archivo de backup."
    echo "Uso: ./scripts/restore.sh nombre_del_archivo.tar.gz"
    exit 1
fi

echo "Deteniendo el servidor para evitar corrupción..."
docker compose stop mc-server

echo "Restaurando datos desde $BACKUP_FILE..."
# Extraer el contenido del backup en la carpeta de datos
tar -xzvf ./backups/$BACKUP_FILE -C ./data/mc

echo "Reiniciando servidor..."
docker compose up -d mc-server

echo "¡Restauración finalizada!"
