# Setting up Linux VM using Virtualbox on a windows machine.

I normally do the code development on a VM in my windows laptop. I generally do
the following steps to configure the VM.

1. Install guest additions before using the VM.

2. Install eclipse + CDT.

3. setup the host share. First setup a shared folder in the
virtualbox settings. Next mount the folder in Linux using the following command.

```
alias mnt_host="sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) GUEST_SHARE ~/GUEST_SHARE"
alias mnt_repo="sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) repo ~/repo"
```

4. Similarly to mount a NFS mount directory

```
alias mount_vm='sudo mount -v -t nfs -o proto=tcp,port=2049,mountport=32767 10.252.4.172:/home/sugeshch sugesh/'
```

