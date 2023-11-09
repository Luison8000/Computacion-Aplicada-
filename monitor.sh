monitor.sh:
#!/bin/bash

if [ -z "$1" ]; then
  echo "Debe proporcionar el nombre del proceso a monitorear como argumento."
  exit 1
fi
proceso="$1"
echo "Verificando el proceso $proceso..."
if pgrep -x "$proceso" > /dev/null; then
  echo "El proceso $proceso está en ejecución."
else
  echo "El proceso $proceso no está en ejecución. Enviando correo a root."
  echo "El proceso $proceso no está en ejecución en $(date)." | mail -s "Alerta: Proceso $proceso no está en ejecución" root
fi


#LUEGO CONFIGURO EL CRON PARA QUE FUNCIONE EL SCRIPT DE MONITOREO: 
crontab -e
*/5 * * * * /opt/tp/scripts/monitor.sh apache2
*/5 * * * * /opt/tp/scripts/monitor.sh mysql


#POR ULTIMO LE DOY PERMISOS DE EJECUCION CON EL COMANDO: chmod +x /opt/tp/scripts/monitor.sh
