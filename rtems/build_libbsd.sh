#!/bin/bash

RTEMS_DIR=$PWD
INSTALL_DIR=/opt/rtems

echo "This script will attempt to build the RTEMS libbsd library"
echo "for the beagleboneblack."
echo ""
echo "The RTEMS libbsd library will be installed into the following directory:"
echo "$INSTALL_DIR/bsp/6/arm-rtems6/beagleboneblack/lib"
echo ""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

# Might need to add the tools directory to the PATH
# export PATH="$INSTALL_DIR/tools/6/bin:$PATH"

cd $RTEMS_DIR/src/rtems-libbsd
./waf configure --prefix=$INSTALL_DIR/bsp/6 \
  --rtems-tools=$INSTALL_DIR/tools/6        \
  --rtems-bsps=arm/beagleboneblack          \
  --buildset=buildset/default.ini
./waf
./waf install

