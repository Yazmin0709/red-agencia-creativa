# Ruta del archivo de log
$logFile = "C:\Scripts\log_ping.txt"

# Dirección a la que se hará ping
$destino = "8.8.8.8"

# Crear carpeta si no existe
if (!(Test-Path -Path "C:\Scripts")) {
    New-Item -ItemType Directory -Path "C:\Scripts"
}

# Bucle infinito
while ($true) {
    # fecha con hora
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    # ping
    $resultado = Test-Connection -ComputerName $destino -Count 1 -Quiet

    # Registrar el resultado
    if ($resultado) {
        Add-Content -Path $logFile -Value "$timestamp - Conexión exitosa a $destino"
    } else {
        Add-Content -Path $logFile -Value "$timestamp - Error de conexión a $destino"
    }

    # tiempo para volver a hacer el ping
    Start-Sleep -Seconds 600
}
