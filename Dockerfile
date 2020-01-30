FROM ubuntu:18.04


RUN apt-get update --fix-missing
RUN apt-get -y install apt-utils
RUN apt-get -y install make zlib1g-dev build-essential ncurses-dev libbz2-dev liblzma-dev
RUN apt-get -y install gfortran libreadline-dev libx11-dev
RUN apt-get -y install evince
RUN apt-get -y install texlive-base  libpcre3-dev libcurl4-openssl-dev


RUN mkdir -p /soft /input /output /work
COPY ./R-3.5.0.tar.gz /soft/R-3.5.0.tar.gz
WORKDIR /soft/
RUN tar -zxvf R-3.5.0.tar.gz
WORKDIR /soft/R-3.5.0
RUN ./configure --with-x=no
RUN make -j 4
RUN make install
WORKDIR /work
COPY src/install.R /run/install.R
RUN Rscript /run/install.R
ENTRYPOINT ["Rscript"]
