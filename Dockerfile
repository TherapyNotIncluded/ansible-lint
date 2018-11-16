FROM ubuntu:18.04

RUN set -x \
    && apt update \
    && apt install -y \
      python-dnspython \
      python-pip \
    && pip install -U \
      pyyaml \
      ansible \
      ansible-lint \
      ipcalc \
    && apt-get autoclean --yes \
    && find /var/lib/apt/lists/ -mindepth 1 -delete \
    && find /tmp/ -mindepth 1 -delete
