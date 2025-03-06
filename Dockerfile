FROM python:3.11-slim

RUN apt-get update && apt-gert install -y make

COPY requirements.txt /tmp/

RUN --mount=type=cache,target=/root/.cache \
    pip install -r /tmp/requirements.txt \

ENV SRC_DIR=app/src
ENV PYTHONPYTH=app/src

ADD . /app
WORKDIR /app/..
