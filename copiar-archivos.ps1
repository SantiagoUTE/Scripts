# Carpeta origen en el servidor compartido
$origen = "\\SVRPROGRAMAS\Compartido"

# Carpeta destino en el equipo local
$destino = "C:\Compartido"

Write-Host "Copiando todo el contenido desde $origen hacia $destino..."

# Crear carpeta destino si no existe
if (!(Test-Path $destino)) {
    New-Item -ItemType Directory -Path $destino -Force
}

# Copiar todo el contenido de la carpeta origen
Copy-Item "$origen\*" $destino -Recurse -Force

Write-Host "Copia completada. Todo el contenido está en $destino"
