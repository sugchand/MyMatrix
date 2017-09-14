# Sync repo between machines.

I normally do the code development on a VM in my laptop and copy the code to
server for testing. The reason for this approach is

	I can do the coding anytime without any connectivity. No need to worry about
    network speed/accessibility.

Copying the changes to the remote repo is bit difficult. The script uses rsync
to do it. It will copy the diff to the server for the relevant testing.

## How to use it.

1. Update the credentials in the script with corresponding details.

2. Copy the script to code top directory in the vm.

3. Run the script each time when a change is being made.

