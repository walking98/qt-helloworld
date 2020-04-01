FROM linakesi/qt5-builder as builder
MAINTAINER cetc15 
#RUN apt-get update && apt-get install -y apt-utils sudo
USER root
COPY .  /home/HelloWorldGui
WORKDIR /home/HelloWorldGui
RUN tar xvf /home/HelloWorldGui/lib.tar -C /usr
RUN qmake HelloWorldGui.pro; make
RUN chmod +x /home/HelloWorldGui/HelloWorldGui

FROM linakesi/qt5-release
COPY lib.tar  /home/HelloWorldGui/lib.tar
RUN tar xvf /home/HelloWorldGui/lib.tar -C /usr
COPY --from=builder /home/HelloWorldGui/HelloWorldGui /usr/bin/HelloWorldGui
CMD ["HelloWorldGui"]

