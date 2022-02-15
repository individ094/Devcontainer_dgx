FROM nvcr.io/nvidia/tensorflow:21.12-tf2-py3
#FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt-get install -y git
RUN mkdir /init
COPY ./requirements.txt /init/requirements.txt
RUN pip3 -q install pip --upgrade
RUN pip install -r /init/requirements.txt

# RUN git config user.name "individ094"
# RUN git config user.email "manuel.waldapfel@web.de"