#!/bin/bash
wget https://software.intel.com/sites/landingpage/pintool/downloads/pin-3.22-98547-g7a303a835-gcc-linux.tar.gz
tar zxf pin-3.22-98547-g7a303a835-gcc-linux.tar.gz
cd pin-3.22-98547-g7a303a835-gcc-linux/source/tools
make -j 20
