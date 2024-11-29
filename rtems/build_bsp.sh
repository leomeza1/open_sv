#!/bin/bash

RTEMS_DIR=$PWD

echo "This script will attempt to build the RTEMS board support package"
echo "for the beagleboneblack."
echo ""
echo "The RTEMS BSP will be installed into the following directory:"
echo "$RTEMS_DIR/bsp/6"
echo ""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

export PATH="$RTEMS_DIR/tools/6/bin:$PATH"

cp config.ini $RTEMS_DIR/src/rtems
cd $RTEMS_DIR/src/rtems
./waf configure --prefix=$RTEMS_DIR/bsp/6
./waf
./waf install

