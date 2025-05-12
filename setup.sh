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
  mv /debug.rb /home/app/src/config/initializers/
else
  echo "El directorio ya contiene un proyecto Rails. Continuando..."
fi

# 3. Ejecutar bundle install
echo "Executing bundle install..."
bundle install

# 4. Ejecutar Rails server
# rails server -b 0.0.0.0 -p 3000
# rdebug-ide --debug --host 0.0.0.0 --port 1234 -- rails server -p 3000 -b 0.0.0.0
# bundle exec rdebug-ide --debug --host 0.0.0.0 --port 1234 -c -- rails server -p 3000 -b 0.0.0.0
# bundle exec rdbg -O -n -c -- rails server -p 3000 -b 0.0.0.0
