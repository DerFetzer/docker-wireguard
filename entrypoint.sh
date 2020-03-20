#!/bin/bash

set -e

if lsmod | grep wireguard &> /dev/null ; then
  echo "wireguard kernel module is already loaded"
else
  echo "Building wireguard kernel module..."
  make
  
  echo "Installing wireguard kernel module..."
  make install
  
  echo "Module installed."
fi

exec $@