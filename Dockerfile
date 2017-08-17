FROM python:3.5-slim

RUN apt-get update && apt-get install -y \
	curl \
	libpq-dev

RUN pip install --no-cache-dir \
	virtualenv

RUN virtualenv env

RUN . env/bin/activate

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
