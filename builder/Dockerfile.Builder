FROM ubuntu:19.10
MAINTAINER cetc15

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

COPY sources.list /etc/apt/sources.list
RUN apt update --fix-missing &&                  \
    apt upgrade -y &&              \
    apt dist-upgrade -y &&         \
    apt install -y --no-install-recommends \
        git                        \
        wget                       \
        xvfb                       \
        flex                       \
        dh-make                    \
        debhelper                  \
        checkinstall               \
        bison                      \
        libxcursor-dev             \
        libxcomposite-dev          \
        build-essential            \
        libssl-dev                 \
        libxcb1-dev                \
        libx11-dev                 \
        libgl1-mesa-dev            \
        libudev-dev                \
        qt5-default qt5-qmltooling-plugins qtmultimedia5-dev qtdeclarative5-dev libqt5qml5 \
        qtbase5-private-dev || echo "maybe apt install errors!"    &&\
    apt update --fix-missing     &&\ 
    apt clean

WORKDIR /home/root/
