#
# Gitlab CI base image for running awscli commands
#
FROM python:latest

RUN apt-get update -y &&  apt-get upgrade -y

RUN pip install awscli
