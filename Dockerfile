FROM guillaumeai/tf


RUN apt update

RUN apt install luarocks/bionic -y
RUN apt install sudo -y

WORKDIR /install

RUN git clone https://github.com/torch/distro.git

RUN cd distro && bash install-deps