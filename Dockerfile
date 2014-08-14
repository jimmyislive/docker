# VERSION 0.0.1

FROM ubuntu:14.04
MAINTAINER Jimmy John <jimmyislive@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list

# Upgrade Ubuntu
RUN apt-get -qq update
RUN apt-get upgrade -y

# python
RUN apt-get install -y python-software-properties
RUN apt-get install -y python-pip
RUN pip install virtualenv

# Create deployment user
RUN useradd -m -d /home/deployment -p deployment deployment && adduser deployment sudo && chsh -s /bin/bash deployment
