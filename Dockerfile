FROM ubuntu:latest

RUN apt update;

RUN apt install -y python3 python3-pip

RUN pip install flask

RUN mkdir /app

COPY web_app.py /app

ENTRYPOINT python3 /app/web_app.py
