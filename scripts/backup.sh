#!/bin/bash
# script/backup.sh - Utilidad para verificar respaldos

# Definir la carpeta de destino
BACKUP_DIR="./backups"

# Crear la carpeta si no existe
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
    echo "Carpeta de backups creada."
fi

echo "Iniciando proceso de respaldo manual..."
# Comando para que el contenedor de backup realice una ejecución inmediata
docker exec mc-backup backup-now

echo "Respaldo completado. Puedes ver tus archivos en $BACKUP_DIR"
