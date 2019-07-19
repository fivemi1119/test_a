FROM daocloud.io/liuyuan960829/matlab_config

MAINTAINER yuan liu <2301794925@qq.com>

RUN apt-get -y install git

RUN mkdir -p /script

RUN cd /script && git clone https://github.com/liuyuan960829/test_a.git

ADD test.m /root/matlab_script/test

RUN chomd 777 -R /root/matlab_script/

ENTRYPOINT["/root/matlab_script/test.m"] 
