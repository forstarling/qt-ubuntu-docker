FROM ubuntu:bionic
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes git build-essential qt5-default
RUN apt-get install --yes libqt5quick5 libqt5xml5 libqt5websockets5-dev
RUN apt-get install --yes qtdeclarative5-dev 
