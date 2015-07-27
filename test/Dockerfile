FROM ubuntu

RUN echo 'Acquire::http::proxy "http://192.168.100.10:3142/";' >> /etc/apt/apt.conf
RUN echo 'Acquire::https::proxy DIRECT;' >> /etc/apt/apt.conf

RUN apt-get update
RUN apt-get install -y python-pip

#COPY dist/S3BackupSimple-0.1-py2.7.egg /root/
#RUN easy_install /root/S3BackupSimple-0.1-py2.7.egg
#RUN s3backup -h

RUN pip install S3BackupSimple


