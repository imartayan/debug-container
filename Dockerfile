FROM ubuntu:latest
RUN apt update
RUN apt upgrade -y
RUN apt install -y --no-install-recommends build-essential cmake git valgrind
RUN apt install -y --no-install-recommends fish micro screenfetch
RUN which fish | xargs chsh -s
RUN apt autoclean
ENTRYPOINT screenfetch && fish
WORKDIR /home
