#!/bin/bash

INSTALL_DIR=$PWD/rki2/build/bbb-libbsd-cfs/rtems-rki.img

echo "This script will attempt to build the RTEMS kernel image for the beagleboneblack."
echo ""
echo "The RTEMS kernel image will be installed into the following directory:"
echo "$INSTALL_DIR"
echo ""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

cd rki2/build/bbb-libbsd-cfs
make

