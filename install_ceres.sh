#!/bin/bash
# Learning ROS
# ROS + Dependencies Installation
# v 0.36

sudo apt-get update
sudo apt-get install -y \
    cmake \
    g++ \
    git \
    google-mock \
    libboost-all-dev \
    libcairo2-dev \
    libeigen3-dev \
    libgflags-dev \
    libgoogle-glog-dev \
    liblua5.2-dev \
    libsuitesparse-dev \
    ninja-build \
    python-sphinx \
    stow


git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
mkdir build
cd build
cmake .. -G Ninja -DCXX11=ON  -DCMAKE_INSTALL_PREFIX=/usr/local/stow/ceres
ninja -j15
sudo ninja install
cd /usr/local/stow/ 
sudo stow ceres

