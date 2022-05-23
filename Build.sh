#!/bin/sh

CCPrefix=${CROSS_COMPILE:+${CROSS_COMPILE}-};
Out=6relayd${CROSS_COMPILE:+-${CROSS_COMPILE}}

mkdir "${Out}"
cd "${Out}"
${CCPrefix}gcc -c ../src/*.c && ${CCPrefix}gcc *.o -static -o6relayd
cd -

