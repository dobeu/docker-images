#!/bin/bash

set -o nounset -o pipefail -o errexit

# needed for dirname for activate below
PATH=$PATH:/usr/bin

# change working directory
if [[ "$1" -eq -w ]]; then
    cd "$2"
    shift 2
fi

# save commands and reset them otherwise activate will assume arguments are for it
COMMAND=("$@")
set --

# shellcheck source=/dev/null
source /c/Users/Administrator/miniconda3/Scripts/activate

# execute command
${COMMAND[@]}