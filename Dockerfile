FROM alpine
RUN apk update
RUN apk add mysql-client
RUN apk add postgresql-client
RUN apk add curl
RUN apk add openssl

CMD ["/bin/sh"]