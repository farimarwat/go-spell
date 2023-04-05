FROM golang:latest
RUN mkdir /app
ADD . /app
RUN apt-get update && \
    apt-get install -y git

RUN apt-get install -y autoconf automake autopoint libtool && \
    apt-get install -y build-essential
WORKDIR /app
RUN git clone "https://github.com/hunspell/hunspell.git"
RUN git clone "https://github.com/LibreOffice/dictionaries.git"

WORKDIR /app/hunspell

RUN autoreconf -vfi && \
    ./configure && \
    make && \
    make install && \
    ldconfig


WORKDIR /app