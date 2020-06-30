FROM mysql:5.7.22

MAINTAINER baiy(go.111@live.com)

ENV TZ=Asia/Shanghai
ENV MYSQL_ROOT_PASSWORD Mysql@123

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./db/ssm_perfect_db.sql /docker-entrypoint-initdb.d
