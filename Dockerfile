FROM ubuntu

RUN apt-get update
RUN apt-get -y install git

WORKDIR /root/.oh-my-git

# Enabling oh-my-git for the root account on bash
COPY fs/root/.bashrc /root/.bashrc
