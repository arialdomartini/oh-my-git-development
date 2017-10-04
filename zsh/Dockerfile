FROM ubuntu

RUN apt-get update
RUN apt-get -y install git zsh 
RUN git clone https://github.com/zsh-users/antigen.git ~/.antigen

WORKDIR /root/

# Enabling oh-my-git for the root account on Zsh

COPY fs/root/.zshrc /root/
COPY fs/root/install-with-antigen.zsh /root/
COPY fs/root/load-with-scripts.zsh /root/
