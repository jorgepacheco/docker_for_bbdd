FROM ibmcom/db2express-c

MAINTAINER jpacheco@autentia.com

ENV DB2INST1_PASSWORD db2inst1

ENV LICENSE accept

ADD ddl.sql /ddl.sql

RUN su - db2inst1 -c "db2start;db2 -tvf /ddl.sql;echo 'BBDD ready ...'"
