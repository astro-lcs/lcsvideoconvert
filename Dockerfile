FROM jrottenberg/ffmpeg:3.0-centos

RUN yum install -y gcc-c++ make sudo
RUN curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -
RUN yum install -y nodejs


VOLUME /tmp
RUN mkdir -p /app

WORKDIR /app


#Time
ENV TW=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TW /etc/localtime && echo $TW > /etc/timezone
