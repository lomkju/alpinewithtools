FROM alpine:3.8

RUN apk add --no-cache 'mysql-client=10.2.15-r0'
RUN apk add --no-cache 'postgresql-client=10.4-r0'
RUN apk add --no-cache 'curl=7.61.0-r0'
RUN apk add --no-cache 'openssl=>1.0.2o-r2'

CMD ["/bin/sh"]