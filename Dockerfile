FROM laurivers/django_nginx_uwsgi_alpine

ADD ./uwsgi.ini /app/uwsgi.ini

ADD ./project/. /project/