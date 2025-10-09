#!/bin/bash

# 1. Setear directorio de trabajo
cd /home/app/src || { echo "Directory '/home/app/src' does not exist "; exit 1; }

# 2. Si el directorio está vacío, crear el proyecto Rails
if [ -z "$(ls -A .)" ]; then
  echo "Directorio vacío, creando nuevo proyecto Rails..."  
  rails new . --api -d postgresql --skip-bundle
  rm -rf /home/app/src/.git
  rm -rf /home/app/src/.github
  rm -f /home/app/src/.dockerignore
  rm -f /home/app/src/Dockerfile
else
  echo "Rails already exists. Continuing..."
fi

# 3. Ejecutar bundle install
echo "Executing bundle install..."
bundle install
