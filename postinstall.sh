#!/bin/bash

# present working directory
INST_DIR=$(dirname $(readlink -f $(basename `pwd`)))
source ./scripts/global_func.sh
source ./scripts/inst_yay.sh
source ./scripts/base.sh
source ./scripts/inst_fonts.sh

