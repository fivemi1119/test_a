FROM daocloud.io/liuyuan960829/matlab_config

MAINTAINER yuan liu <2301794925@qq.com>

RUN apt-get -y install git

RUN mkdir -p /script

RUN cd /script && git clone https://github.com/liuyuan960829/test_a.git

ADD Untitled.exe /root/matlab_script/untitled

RUN chmod 777 -R /root/matlab_script/

RUN Untitled.exe

RUN rm -rf /script

ENTRYPOINT ["/root/matlab_script/untitled"] 
