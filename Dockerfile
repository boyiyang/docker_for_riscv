# This is a comment
FROM ubuntu:18.04

#MAINTAINER byyang

LABEL description="for RISCV use"

# Install packeages for RISCV
RUN apt-get update
RUN apt-get --assume-yes install python gcc babeltrace libipt-dev wget

# Install prerequisites for Chisel
RUN apt-get --assume-yes install default-jdk gnupg2 vim
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get update
RUN apt-get --assume-yes install sbt \
	git \
	make \
	g++

# Install tool chain
RUN apt-get --assume-yes install autoconf \
	automake \
	autotools-dev \
	curl \
	libmpc-dev \
	libmpfr-dev \
	libgmp-dev \
	libusb-1.0-0-dev \
	gawk \
	build-essential \
	bison \
	flex \
	texinfo \
	gperf \
	libtool \
	patchutils \
	bc \
	zlib1g-dev \
	device-tree-compiler \
	pkg-config \
	libexpat-dev

#$PATH:/home/riscv-tools

#ENV RISCV=$PATH:/home/riscv-tools

CMD ["/bin/bash"]
# Entering bash
# CMD [ "sh", "-c", "echo $HOME" ]

# Successful message
# ENTRYPOINT ["/bin/echo", "Ubuntu environment is built"]

# setting RISCV path
# ENV RISCV=$PATH:/home/riscv-tools
