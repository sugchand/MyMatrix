#!/bin/bash                                                                     

# Author: Sugesh Chandran <sugeshchandran@gmail.com>                           

REPO=$1
FILELIST=cscope.tags.lst

if [ ! -d "$REPO" ]; then
    echo "The code repo is not exist, EXITING..."
    exit 0
fi

cd $REPO
touch $FILELIST
find | grep "\.c$" >> $FILELIST
find | grep "\.cpp$" >> $FILELIST
find | grep "\.h$" >> $FILELIST
find | grep "\.cc$" >> $FILELIST
# *** ADD more lines for different file types if required. ***

# Run cscope with specific file list
cscope -i $FILELIST
