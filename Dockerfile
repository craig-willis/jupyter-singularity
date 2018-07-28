FROM jupyter/scipy-notebook:5811dcb711ba

ENV VER 2.5.2

USER root
RUN apt-get update -qqq && \ 
    apt-get install -y apt-utils build-essential squashfs-tools libarchive13 libarchive-dev && \
    wget https://github.com/singularityware/singularity/releases/download/$VER/singularity-$VER.tar.gz && \
    tar xvf singularity-$VER.tar.gz && \
    cd singularity-$VER && \
    ./configure --prefix=/usr/local --sysconfdir=/etc && \
    make && make install && cd .. &&  rm -r singularity-$VER


USER ${NB_USER}
 
