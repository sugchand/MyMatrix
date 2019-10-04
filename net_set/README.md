# Network Update
Script to setup interface on machine based on different network. Its a pain to change the network configuration each time when moving from one network to another. Say for eg: office network need specific configurations where as home network doesnt need it. User can create multiple copies of this script with specific network configuration based on different network they need to be connect to.

## How to use
Update the parameters at the start of the script based on the network where you wanted to connect to. Run the script as

```
    $ sudo ./nw_set.sh

```
Root/sudo permission is needed  to run the script as it changing the network connectivity.

## TODO::
1. Proxy and dns records are not modified with this script, it must be implemented.
2. Support for different OS. (Script works on on linux with minimum bash version 4.0)
3. Support for custom software sources


