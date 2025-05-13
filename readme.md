# Microservicio en Ruby on Rails

## Modificar conexion a Base de datos

Revisar archivo config/database.yml y modificar la información de conexión a base de datos. Por ejemplo:

**default: &default**
    adapter: postgresql
    encoding: unicode
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    host: <%= ENV["PG_HOST"] %>
    port: <%= ENV["PG_PORT"] %>
    database: <%= ENV["PG_DB"] %>
    username: <%= ENV["PG_USER"] %>
    password: <%= ENV["PG_PASSWORD"] %>

## Modificar Gemfile

Agregar estas gemas en el final del Gemfile

  gem "debug"
  gem "byebug"
  gem "debase"
  gem "ruby-debug-ide"
