描述
========
因其他的django_nginx_uwsgi镜像太大，所以写了在alpine系统基础上的镜像。
其中nginx_uwsgi_alpine参考并引于tiangolo/uwsgi-nginx:python3.6-alpine3.7，再加以修改

镜像需要注意的细节：
===================

1.当前镜像不包含nginx对静态文件的处理（本人没这个需求）

2.容器开放80端口

3.project为已创建的django项目文件夹，如果项目名称不同，需同时修改uwsgi.ini配置文件

requirements：
===========
django
pymysql

Dockerfile：
============
FROM laurivers/django_nginx_uwsgi_alpine

ADD ./uwsgi.ini /app/uwsgi.ini

ADD ./project/. /project/

简单的使用容器
=============
镜像中project目录包含一个简单的django项目，你可以使用一下命令来启用容器：
docker run --name project -p 80:80 -d laurivers/django_nginx_uwsgi_alpine

本地测试路径
======
http://127.0.0.1/hello
