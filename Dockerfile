FROM alpine:3.8

# Set timezone to UTC by default
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

#Add edge repo
RUN echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk update
RUN apk upgrade

#Essentials
RUN apk add --no-cache 'mysql-client'
RUN apk add --no-cache 'postgresql-client'
RUN apk add --no-cache 'curl'
RUN apk add --no-cache 'openssl'
RUN apk add --no-cache 'git'

#Docker
RUN apk add --no-cache 'docker'

#K8s Kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

#Python
# groff and less is need for aws-cli help to work.
RUN apk add --no-cache groff less python3
RUN pip3 install --upgrade pip

#AWS CLI
RUN pip3 install awscli

CMD ["/bin/sh"]