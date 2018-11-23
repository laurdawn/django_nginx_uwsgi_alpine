FROM tiangolo/uwsgi-nginx:python3.6-alpine3.7

MAINTAINER laurivers

RUN apk update \
  && apk add --virtual build-deps gcc musl-dev  \
  && apk add libressl-dev libffi-dev

RUN pip install django \
	pymysql

RUN apk del build-deps

ADD ./uwsgi.ini /app/uwsgi.ini

ADD ./project/. /project/