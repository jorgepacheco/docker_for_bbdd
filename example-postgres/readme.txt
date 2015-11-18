
Construir el contenedor
-----------------------

docker build -t jpacheco/postgres-formacion .


Arrancar el contenedor
-----------------------

docker run -p 5432:5432 -d jpacheco/postgres-formacion
