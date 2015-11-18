FROM wnameless/oracle-xe-11g

MAINTAINER jpacheco@autentia.com

ADD ddl.sql /ddl.sql

ENV ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

ENV SQLPLUS=$ORACLE_HOME/bin/sqlplus

RUN service oracle-xe start;$SQLPLUS system/oracle@xe @ddl.sql; echo 'BBDD formación ready ...' 
