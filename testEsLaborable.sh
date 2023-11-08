#!/bin/bash

# Incluye el script esLaborable.sh para utilizar la función esLaborable
source esLaborable.sh

# Fecha de ejemplo 
fecha_ejemplo="2023-11-07"

# Llama a la función esLaborable
if esLaborable "$fecha_ejemplo"; then
  echo "Resultado: La fecha es laborable."
else
  echo "Resultado: La fecha no es laborable."
fi
