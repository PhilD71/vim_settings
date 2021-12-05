#!/bin/bash
# A quick script to copy the current vimrc, append date to name and commit it to repo
# Its pretty janky ngl

# Phillip Dumitru
# 2021-12-04 21:51 PST

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
VIMRC_DIR=$1
DATE=$(date)

# strip out spaces with underscores for date
_DATE="${DATE// /_}"

# copy it to git repo and commit it in!
if cp $VIMRC_DIR $SCRIPT_DIR/vimrc_$_DATE; then
    git add .
    git commit -am"Updated vimrc on `date +'%Y-%m-%d %H:%M:%S'`"
    git push
else
    echo "SCRIPT USAGE: ./update_vim_script.sh <full_path_of_vimrc>"
fi
