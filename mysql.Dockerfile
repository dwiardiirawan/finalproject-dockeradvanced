FROM mysql:5.7
ENV MYSQL_DATABASE dbkuasai
COPY ./myweb-app/database/ /docker-entrypoint-initdb.d/
HEALTHCHECK CMD mysqladmin ping
