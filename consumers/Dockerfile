FROM python:2.7-alpine3.7

# Install uWSGI
RUN apk add --no-cache uwsgi-python

# Copy the base uWSGI ini file to enable default dynamic uwsgi process number
COPY uwsgi.ini /etc/uwsgi/

# Install Supervisord
RUN apk add --no-cache supervisor
# Custom Supervisord config
# COPY supervisord.ini /etc/supervisor.d/supervisord.ini

COPY ./supervisor/supervisord.conf /etc/supervisor/

# Which uWSGI .ini file should be used, to make it customizable
ENV UWSGI_INI /app/uwsgi.ini

# By default, run 2 processes
ENV UWSGI_CHEAPER 2

# By default, when on demand, run up to 16 processes
ENV UWSGI_PROCESSES 16

ARG WORK_DIR=/var/www

RUN usermod -u 1000 www-data

WORKDIR ${WORK_DIR}

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

CMD ["php-fpm"]

EXPOSE 9000