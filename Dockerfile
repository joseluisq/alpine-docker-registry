FROM alpine:3.10

LABEL maintainer=https://git.io/joseluisq

RUN set -ex \
    && apk update && apk add --no-cache bash ca-certificates apache2-utils curl \
    && curl -o registry https://raw.githubusercontent.com/docker/distribution-library-image/master/amd64/registry

RUN mv registry /bin/registry
COPY ./config-example.yml /etc/docker/registry/config.yml

VOLUME ["/var/lib/registry"]
EXPOSE 5000

COPY docker-entrypoint.sh /entrypoint.sh

RUN chmod u+x /bin/registry \
    && chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/etc/docker/registry/config.yml"]

# Metadata
LABEL org.opencontainers.image.vendor="Jose Quintana" \
    org.opencontainers.image.url="https://github.com/joseluisq/alpine-docker-registry/" \
    org.opencontainers.image.title="Alpine Docker Registry" \
    org.opencontainers.image.description="Alpine and Docker Registry v2 x86_64 image." \
    org.opencontainers.image.version="v1.0.0" \
    org.opencontainers.image.documentation="https://github.com/joseluisq/alpine-docker-registry/"
