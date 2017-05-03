from hbpmip/flyway:4.1.2-2
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

ARG BUILD_DATE
ARG VCS_REF

ENV FLYWAY_DBMS=postgresql \
    FLYWAY_HOST=db \
    FLYWAY_PORT=5432 \
    FLYWAY_DATABASE_NAME=woken \
    FLYWAY_SCHEMAS=public

COPY sql/create.sql /flyway/sql/V1_0__create.sql

WORKDIR /flyway
CMD ["migrate"]

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="hbpmip/woken-db-setup" \
    org.label-schema.description="Woken database setup" \
    org.label-schema.url="https://github.com/LREN-CHUV/woken-db-setup" \
    org.label-schema.vcs-type="git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/LREN-CHUV/woken-db-setup" \
    org.label-schema.vendor="CHUV LREN" \
    org.label-schema.docker.dockerfile="Dockerfile" \
    org.label-schema.schema-version="1.0"
