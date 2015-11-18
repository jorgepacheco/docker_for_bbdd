FROM postgres

MAINTAINER jpacheco@autentia.com

ENV POSTGRES_PASSWORD admin

ENV POSTGRES_DB formacion 

ADD ddl.sql /docker-entrypoint-initdb.d/ddl.sql
