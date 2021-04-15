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

# RUN apt-get install --yes qt5-default
# RUN apt-get install --yes libqt5quick5 libqt5xml5 libqt5websockets5-dev libqt5multimedia5 libqt5dbus5 libqt5widgets5
# RUN apt-get install --yes qtdeclarative5-dev qtmultimedia5-dev

RUN apt-get install --yes libglib2.0-dev libnm-dev
RUN apt-get install --yes cmake

RUN apt-get install --yes software-properties-common
RUN add-apt-repository --yes ppa:beineri/opt-qt-5.15.2-bionic && \
	apt-get update
RUN apt-get install --yes qt515base 
RUN apt-get install --yes qt515websockets qt515xmlpatterns qt515multimedia qt515declarative  qt515virtualkeyboard-no-lgpl

#RUN echo "source /opt/qt515/bin/qt515-env.sh" >> /etc/bash.bashrc
#RUN echo "export CPLUS_INCLUDE_PATH=/tima-ui/Libs/NetworkManagerQt/include/:/tima-ui/Libs/NetworkManagerQt/include/KF5/NetworkManagerQt/networkmanagerqt/" >> /etc/bash.bashrc
#RUN echo "export PATH=$PATH:/opt/qt515/bin/" >> /etc/basg.bashrc

ENV QTDIR=/opt/qt515
ENV PATH=/opt/qt515/bin:$PATH
ENV LD_LIBRARY_PATH=/opt/qt515/lib/x86_64-linux-gnu:/opt/qt515/lib:$LD_LIBRARY_PATH
ENV PKG_CONFIG_PATH=/opt/qt515/lib/pkgconfig:$PKG_CONFIG_PATH

# RUN git clone git://code.qt.io/qt/qt5.git && \
#     cd qt5 && \
#     git checkout 5.15.2 && \
#     perl init-repository -f --module-subset=default,-qtwebengine,-qt3d,-qtactiveqt,-qtandroidextras,-qtdoc,-qtgamepad,-qtlocation,-qtmacextras,-qtpurchasing,-qtquick3d,-qtrepotools,-qtsensors,-qtrepotools,-qtspeech,-qttools,-qtwayland,-qtwinextras,-qtwebview,-qtxmlpatterns && \
#     cd ../ && mkdir qt5-build && cd qt5-build/ && \
#     ../qt5/configure -developer-build -opensource -nomake examples -nomake tests -confirm-license && \
#     make

# RUN git clone https://invent.kde.org/frameworks/extra-cmake-modules.git && \
# 	cd extra-cmake-modules && \
# 	git checkout v5.79.0 && \
# 	mkdir build && cd build && \
# 	cmake ../ && make install

# RUN git clone https://github.com/KDE/networkmanager-qt.git && \
# 	cd networkmanager-qt && \
# 	git checkout v5.79.0 && \
	





