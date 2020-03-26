FROM tefworkshop/qt5-gui

MAINTAINER cetc15 

#RUN apt-get update && apt-get install -y apt-utils sudo
USER root

COPY .  /home/HelloWorldGui
RUN tar xvf /home/HelloWorldGui/lib.tar -C /usr
WORKDIR /home/HelloWorldGui
RUN qmake HelloWorldGui.pro; make
RUN chmod +x /home/HelloWorldGui/HelloWorldGui; ls /home/HelloWorldGui/

CMD /home/HelloWorldGui/HelloWorldGui

