FROM ubuntu:latest
RUN apt update
RUN apt install -y vim strace
RUN DEBIAN_FRONTEND=noninteractive apt install -y build-essential gdb sudo file
RUN adduser --disabled-password --gecos '' user
RUN echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user
USER user
RUN mkdir -p /home/user/c-compiler
WORKDIR /home/user/c-compiler

# ボリュームを指定
VOLUME ["/home/user/c-compiler"]
