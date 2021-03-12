FROM wordpress:latest
RUN apt-get update && apt-get install -y less mariadb-client

RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /usr/local/bin/wp
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN curl -o /usr/local/bin/eeeentrypoint.sh https://raw.githubusercontent.com/Brainstorm-Marketing-LLC/wordpress-docker/master/entrypoint9.sh
RUN chmod +x /usr/local/bin/eeeentrypoint.sh

ENTRYPOINT ["eeeentrypoint.sh"]
CMD ["apache2-foreground"]