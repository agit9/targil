FROM ubuntu:latest
ENV VERSION=1.2.0
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install vim
RUN apt-get -y install zip
RUN apt-get -y install unzip
WORKDIR /home/targil/
COPY zip_job.py /tmp/
CMD uname -sm && if [ -f "/tmp/zip_job.py" ]; then echo "file exists"; fi
