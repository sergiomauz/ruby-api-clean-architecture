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

## Agregar breakpoints

Cada breakpoint que se requiera, se necesita agregar el comando **'binding.break'** en la línea anterior desde donde se requiera empezar. Considerar que cada paso que se avance con F10 o F11, se abrirá una nueva pestaña, será necesario ver com evitar eso a futuro.
