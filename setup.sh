#!/bin/bash

# 1. Setear directorio de trabajo
cd /home/app/src || { echo "No se pudo cambiar al directorio /home/app/src"; exit 1; }

# 2. Si el directorio está vacío, crear el proyecto Rails
if [ -z "$(ls -A .)" ]; then
  echo "Directorio vacío, creando nuevo proyecto Rails..."
  rails new . --api -d postgresql --skip-bundle
else
  echo "El directorio ya contiene un proyecto Rails. Continuando..."
fi

# 3. Ejecutar bundle install
echo "Ejecutando bundle install..."
bundle install

# 4. Ejecutar Rails server
echo "Iniciando Rails server..."
rails server -b 0.0.0.0 -p 3000
