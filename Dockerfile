FROM python:3.7-buster
MAINTAINER Jayaprakash Subramanian

ENV CONFIG_MODE prod

RUN mkdir /simple_service
WORKDIR /simple_service

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY simpleservice.py .

LABEL version="0.1.1"
CMD [ "python", "./simpleservice.py" ]
