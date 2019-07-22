FROM fedora:30
MAINTAINER Krishna Kumar <krishnak@utexas.edu>

# Update to latest packages, remove vim-minimal & Install Git, GCC, Clang, Autotools and VIM
RUN dnf update -y && \
    dnf remove -y vim-minimal python \
    dnf install -y boost boost-devel clang clang-analyzer clang-tools-extra cmake cppcheck eigen3-devel \
                   findutils gcc gcc-c++ git kernel-devel lcov make tar tbb tbb-devel \
                   valgrind vim wget && \
    dnf clean all

# Create a user cityscapelabs
RUN useradd cityscapelabs
USER cityscapelabs

# Create a research directory and clone git repo of cityscape code
RUN mkdir -p /home/cityscapelabs/research && \
    cd /home/cityscapelabs/research && \
    git clone https://github.com/cityscapelabs/cityscape.git

# Create a working directory
WORKDIR /home/cityscapelabs/research/cityscape

RUN /bin/bash "$@"
