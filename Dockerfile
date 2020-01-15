FROM postgres:latest
ARG FILE
ARG DBNAME
ENV FILE ${FILE}
ENV DBNAME ${DBNAME}
VOLUME /tmp

COPY ${FILE} /tmp/${FILE}

COPY restore_database.sh /docker-entrypoint-initdb.d/restore_database.sh
RUN sed -i 's/\r$//g' /docker-entrypoint-initdb.d/restore_database.sh
RUN chmod 777 /docker-entrypoint-initdb.d/restore_database.sh

EXPOSE 5432
