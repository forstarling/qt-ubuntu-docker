FROM ubuntu:bionic
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes git \
			     build-essential 
RUN apt-get install --yes python \
			  python3 
RUN DEBIAN_FRONTEND="noninteractive" apt-get install --yes tzdata
#RUN apt-get build-dep --yes qt5-default
RUN apt-get install --yes libx11-xcb-dev \
			  libxcb-xinerama0-dev
RUN apt-get install --yes libasound2-dev \
			  libgstreamer1.0-dev \
			  libgstreamer-plugins-base1.0-dev \
                          libgstreamer-plugins-good1.0-dev \
                          libgstreamer-plugins-bad1.0-dev
RUN apt-get install --yes qt5-default
RUN apt-get install --yes libqt5quick5 libqt5xml5 libqt5websockets5-dev
RUN apt-get install --yes qtdeclarative5-dev 
RUN apt-get install --yes libglib2.0-dev
# RUN git clone git://code.qt.io/qt/qt5.git && \
#     cd qt5 && \
#     git checkout 5.15.2 && \
#     perl init-repository -f --module-subset=default,-qtwebengine,-qt3d,-qtactiveqt,-qtandroidextras,-qtdoc,-qtgamepad,-qtlocation,-qtmacextras,-qtpurchasing,-qtquick3d,-qtrepotools,-qtsensors,-qtrepotools,-qtspeech,-qttools,-qtwayland,-qtwinextras,-qtwebview,-qtxmlpatterns && \
#     cd ../ && mkdir qt5-build && cd qt5-build/ && \
#     ../qt5/configure -developer-build -opensource -nomake examples -nomake tests -confirm-license && \
#     make

