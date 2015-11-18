
Construir el contenedor
-----------------------

docker build -t jpacheco/db2-formacion .

Arrancar el contenedor
----------------------

docker run -d -p 50000:50000 jpacheco/db2-formacion db2start
