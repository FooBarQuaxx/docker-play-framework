FROM ingensi/oracle-jdk
MAINTAINER Ingensi labs <contact@ingensi.com>

RUN yum update -y && yum install -y unzip
RUN curl -O http://downloads.typesafe.com/play/2.2.0/play-2.2.0.zip
RUN unzip play-2.2.0.zip -d / && rm play-2.2.0.zip && chmod a+x /play-2.2.0/play
ENV PATH $PATH:/play-2.2.0

EXPOSE 9000
RUN mkdir /app
WORKDIR /app
CMD ["play", "run"]
