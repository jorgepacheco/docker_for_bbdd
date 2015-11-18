
Construir el contenedor
-----------------------

docker build -t jpacheco/oracle-formacion .

Arrancar el contenedor
----------------------

docker run -d -p 1521:1521 jpacheco/oracle-formacion
