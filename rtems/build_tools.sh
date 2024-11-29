#!/bin/bash

RTEMS_DIR=$PWD

echo "This script will attempt to build the RTEMS tool suite for"
echo "the beagleboneblack."
echo ""
echo "The RTEMS tools will be installed into the following directory:"
echo "$RTEMS_DIR/tools/6"
echo ""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

cd $RTEMS_DIR/src/rsb/rtems
../source-builder/sb-check
../source-builder/sb-set-builder --prefix=$RTEMS_DIR/tools/6 6/rtems-arm

