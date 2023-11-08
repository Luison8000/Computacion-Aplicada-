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


  echo "La fecha $fecha es un día laborable."
  return 0
}
