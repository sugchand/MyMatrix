#!/bin/bash -x
LOCAL_REPO=/home/sugchand/local-vm/repo/MyMatrix/
REMOTE_REPO=/home/sugchand/remote-server/repo/MyMatrix/
REMOTE_USER=sugchand
REMOTE_IP=1.2.3.4

rsync -avrhu --progress --include '*/' --include '*.mk' --include '*.sh' --include '*.c' --include '*.h' --include '*.in' --include '*.cc' --include '*.txt' --include '*.md' --exclude '*' $LOCAL_REPO $REMOTE_USER@$REMOTE_IP:$REMOTE_REPO
#rsync -av --include '*/' --include '*.mk' --include '*.sh' --include '*.c' --include '*.h' --include '*.in' --include '*.cc' --exclude '*' . root@10.237.223.42:$REMOTE_REPO

