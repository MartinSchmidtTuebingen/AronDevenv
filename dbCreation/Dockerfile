FROM mysql:5.7
ENV MYSQL_PASSWORD=example \
    MYSQL_DATABASE=db \
    MYSQL_ROOT_PASSWORD=example \
    MYSQL_ALLOW_EMPTY_PASSWORD=yes
COPY arondb.sql /docker-entrypoint-initdb.d/arondb.sql
RUN mkdir /var/lib/mysql-no-volume
CMD ["--datadir", "/var/lib/mysql-no-volume"]
