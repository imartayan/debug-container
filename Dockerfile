FROM debian:stable-slim
RUN apt update
RUN apt upgrade -y
RUN apt install -y --no-install-recommends build-essential
RUN apt install -y --no-install-recommends valgrind
RUN apt install -y --no-install-recommends cmake
RUN apt install -y --no-install-recommends vim
RUN apt autoclean
WORKDIR /home
