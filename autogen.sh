#/bin/bash

# https://github.com/PaulStoffregen/teensy_loader_cli
TOOLS_PATH="/home/chrisws/teensy/bin"

# https://github.com/ARM-software/CMSIS_5
ARM_MATH_PATH=`pwd`"/libs/CMSIS/CMSIS/Lib/GCC"

# sudo apt-get install gcc-arm-none-eabi
autoreconf -fvi && ./configure --build=i686-pc-linux-gnu --host=arm-none-eabi \
                               TOOLS_PATH="${TOOLS_PATH}" ARM_MATH_PATH=${ARM_MATH_PATH}

