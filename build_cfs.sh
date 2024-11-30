#!/bin/bash

echo "This script will attempt to build cFS for the beagleboneblack."
echo ""
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

cd cFS
make SIMULATION=arm-bbb-rtems6 prep
make
make install

