FROM ubuntu
RUN apt-get update && apt-get -y install \
build-essential \
libncurses5-dev \
curl \
file
RUN mkdir -p /tmp/vi
WORKDIR /tmp/vi
RUN curl -sS -o ex-050325.tar.bz2 -XGET -L https://sourceforge.net/projects/ex-vi/files/latest/download
RUN tar -xvf ex-050325.tar.bz2
WORKDIR /tmp/vi/ex-050325
RUN sed -i '/^INSTALL/s/ucb/bin/' Makefile
RUN sed -i -E -e 's/^TERMLIB/#&/' Makefile
RUN sed -i '/^#TERMLIB.*ncurses/s/#//' Makefile
RUN make && make install

RUN mkdir -p /tmp/vi/work
WORKDIR /tmp/vi/work

ENTRYPOINT /bin/bash
