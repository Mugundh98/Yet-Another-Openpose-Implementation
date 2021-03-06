FROM ubuntu:16.04
FROM python:3.7
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

COPY applications / applications /
COPY configs / configs /
COPY dataset / dataset /
COPY dev / dev /
COPY doc / doc /
COPY models / models /
COPY post_processing / post_processing /
COPY tpu_training /tpu_training /
COPY trained_models / trained_models /
COPY training / training /
COPY .gitignore /
COPY requirements.txt /
COPY visualizations.py /
COPY __init__.py /
COPY check.mp4 /
COPY requirements.txt /
RUN pip install -r requirements.txt

RUN chmod +x applications/video.py
CMD applications/video.py ./check.mp4 ./check1.mp4 --fourcc XVID --fps 30
