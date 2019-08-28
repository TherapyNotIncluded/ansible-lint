FROM ubuntu:18.04

RUN set -x \
    && apt update \
    && apt install -y \
      python-dnspython \
      python-pip \
    && pip install -U \
      pyyaml==3.13 \
      pytoml \
      ipcalc \
      ansible-lint==4.1.1a0 \
    && apt-get autoclean --yes \
    && find /var/lib/apt/lists/ -mindepth 1 -delete \
    && find /tmp/ -mindepth 1 -delete
