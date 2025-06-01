#!/bin/bash


FECHA=$(date +%Y-%m-%d_%H-%M)
ORIGEN="/home/devasc/Documentos/script"
DESTINO="/home/devasc/respaldo_auto"
ARCHIVO="proyecto_backup_$FECHA.tar.gz"
LOG="/home/devasc/respaldo_auto/respaldo.log"
EMAIL="correo@gmail.com"

# ==== CREAR CARPETA DE RESPALDOS 
mkdir -p "$DESTINO"

# ==== CREAR RESPALDO COMPRIMIDO ====
tar -czf "$DESTINO/$ARCHIVO" "$ORIGEN"

# ==== VERIFICAR SI FUE EXITOSO Y REGISTRAR O NOTIFICAR ====
if [ $? -eq 0 ]; then
    MENSAJE="[$(date)] Respaldo exitoso: $ARCHIVO"
    echo "$MENSAJE" >> "$LOG"
else
    MENSAJE="[$(date)] ERROR: Falló el respaldo de $ORIGEN"
    echo "$MENSAJE" >> "$LOG"
    
    # ==== ENVIAR CORREO DE ERROR CON MSMTP ====
    echo -e "Subject: Respaldo Fallido\n\n$MENSAJE" | msmtp "$EMAIL"
fi
