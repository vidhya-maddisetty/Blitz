FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 apache2-utils libapache2-mod-python python-setuptools python-genshi -y
RUN apt-get install python-mysqldb -y
RUN apt-get install trac -y
RUN mkdir /opt/TRAC
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 8098
