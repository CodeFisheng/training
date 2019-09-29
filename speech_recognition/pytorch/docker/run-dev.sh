#!/bin/bash
nvidia-docker run \
  -v /data/training/speech_recognition:/data/training/speech_recognition:rw \
  -v /home/ubuntu:/home/ubuntu:rw \
  -v /etc/passwd:/etc/passwd:ro \
  -it --rm --user $(id -u) ds2-cuda9cudnn7:gpu
