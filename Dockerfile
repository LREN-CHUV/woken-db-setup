from lren/flyway:4.1.2
MAINTAINER Ludovic Claude <ludovic.claude@chuv.ch>

ARG BUILD_DATE
#ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="hbpmip/woken-db-setup" \
    org.label-schema.description="Woken database setup" \
    org.label-schema.url="https://github.com/LREN-CHUV/woken-db-setup" \
    org.label-schema.vcs-type="git" \
    #org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/LREN-CHUV/woken-db-setup" \
    org.label-schema.vendor="CHUV LREN" \
    org.label-schema.docker.dockerfile="Dockerfile" \
    org.label-schema.schema-version="1.0"
