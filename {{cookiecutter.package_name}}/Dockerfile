FROM ubuntu:18.04

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y python3.10 python3.10-distutils python3.10-venv python3.10-dev python3-pip
RUN apt install -y libpq-dev
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

WORKDIR /workarea
COPY . /workarea/

RUN python3.10 -m pip install -r /workarea/requirements.txt 
RUN python3.10 -m pip install -r /workarea/requirements-dev.txt
RUN python3.10 -m pip install -e .
