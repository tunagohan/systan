FROM mysql:5.7.21
LABEL  maintainer "k-waragai <kazuxtuna@gmail.com>"

RUN apt-get update
RUN apt-get install -y apt-utils locales

RUN rm -rf /var/lib/apt/lists/*
RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen

# Charset
ADD ./docker/mysql/my.cnf /etc/mysql/conf.d/my.cnf
