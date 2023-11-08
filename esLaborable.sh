#!/bin/bash

# Función para determinar si una fecha es un día laborable o no
esLaborable() {
  local fecha="$1"
  local dia_semana=$(date -d "$fecha" +%u)
  
  # Verifica si la fecha es un día no laborable (fin de semana)
  if [ $dia_semana -ge 6 ]; then
    echo "La fecha $fecha es un día no laborable (fin de semana)."
    return 1
  fi
import datetime
import requests

def descargar_feriados(http://servicios.infoleg.gob.ar/infolegInternet/anexos/170000-174999/174389/norma.htm):
    # Descarga el archivo de feriados desde la URL proporcionada
    response = requests.get(http://servicios.infoleg.gob.ar/infolegInternet/anexos/170000-174999/174389/norma.htm)

    if response.status_code == 200:
        # Lee y devuelve el contenido del archivo
        return response.text.splitlines()
    else:
        return []

def esLaborable(fecha, lista_feriados):
    fecha_obj = datetime.datetime.strptime(fecha, "%Y-%m-%d")
    dia_semana = fecha_obj.weekday()

    if dia_semana >= 5:
        return f"La fecha {fecha} es un día no laborable (fin de semana)."

    if fecha in lista_feriados:
        return f"La fecha {fecha} es un día no laborable (feriado)."

    return f"La fecha {fecha} es un día laborable."

url_feriados = "http://servicios.infoleg.gob.ar/infolegInternet/anexos/170000-174999/174389/norma.htm"

lista_feriados = descargar_feriados(http://servicios.infoleg.gob.ar/infolegInternet/anexos/170000-174999/174389/norma.htm)

# Ejemplo de uso:
fecha_ejemplo = "2023-11-07"
resultado = esLaborable(fecha_ejemplo, lista_feriados)
print(resultado)


  echo "La fecha $fecha es un día laborable."
  return 0
}
