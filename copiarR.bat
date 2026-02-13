@echo off
echo ============================================
echo Copiando archivos desde \\SVRPROGRAMAS\Compartido
echo hacia C:\Compartido
echo ============================================

REM Crear carpeta destino si no existe
if not exist "C:\Compartido" (
    mkdir "C:\Compartido"
)

REM Ejecutar Robocopy
robocopy "\\SVRPROGRAMAS\Compartido" "C:\Compartido" /E /COPY:DAT /R:2 /W:5

echo ============================================
echo Copia completada.
echo ============================================

pause
