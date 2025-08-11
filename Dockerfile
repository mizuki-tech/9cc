FROM ubuntu:latest

# ロケール設定を追加
RUN apt update && apt install -y locales
RUN locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

RUN apt install -y vim strace
RUN DEBIAN_FRONTEND=noninteractive apt install -y build-essential gdb sudo file
RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
RUN mkdir -p /home/user/c-compiler
WORKDIR /home/user/c-compiler
VOLUME ["/home/user/c-compiler"]
