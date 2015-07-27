FROM ubuntu

RUN echo 'Acquire::http::proxy "http://192.168.100.10:3142/";' >> /etc/apt/apt.conf
RUN echo 'Acquire::https::proxy DIRECT;' >> /etc/apt/apt.conf

RUN apt-get update
RUN apt-get install -y python-pip
RUN apt-get install -y git

COPY dist/SimpleS3Backup-*.egg /root/
RUN easy_install /root/SimpleS3Backup-*.egg

#RUN pip install SimpleS3Backup
#RUN pip install git+https://github.com/deweysasser/SimpleS3Backup

RUN s3backup -h


