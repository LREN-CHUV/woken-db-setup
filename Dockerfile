FROM hbpmip/flyway:5.1.4-0
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ENV FLYWAY_DBMS=postgresql \
    FLYWAY_HOST=db \
    FLYWAY_PORT=5432 \
    FLYWAY_DATABASE_NAME=woken \
    FLYWAY_SCHEMAS=public

COPY sql/V1_0__create.sql \
     sql/V1_1__big_error_and_params.sql \
     sql/V1_2__multiple_results.sql \
     sql/V1_3__gen_features_tables_seq.sql \
       /flyway/sql/

WORKDIR /flyway
CMD ["migrate"]

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="hbpmip/woken-db-setup" \
      org.label-schema.description="Woken database setup" \
      org.label-schema.url="https://github.com/LREN-CHUV/woken-db-setup" \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url="https://github.com/LREN-CHUV/woken-db-setup" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version="$VERSION" \
      org.label-schema.vendor="LREN CHUV" \
      org.label-schema.license="Apache2.0" \
      org.label-schema.docker.dockerfile="Dockerfile" \
      org.label-schema.schema-version="1.0"
