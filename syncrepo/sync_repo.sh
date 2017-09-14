#!/bin/bash -x
REMOTE_REPO=/home/sugeshch/repo/FPGA-BDX-POC
REMOTE_USER=root
REMOTE_IP=10.01.0.1

rsync -av --include '*/' --include '*.mk' --include '*.sh' --include '*.c' --include '*.h' --include '*.in' --exclude '*' . REMOTE_USER@REMOTE_IP:$REMOTE_REPO
#rsync -av --include '*/' --include '*.mk' --include '*.sh' --include '*.c' --include '*.h' --include '*.in' --exclude '*' . root@10.237.223.42:$REMOTE_REPO

