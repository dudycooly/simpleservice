FROM python:3.7-buster
MAINTAINER Jayaprakash Subramanian
ENV CONFIG_MODE prod
CMD [ "python", "./simpleservice.py" ]
