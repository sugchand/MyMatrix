#!/bin/bash
# Author: Sugesh Chandran <sugeshchandran@gmail.com>

###############################################################################
# IP can be "<IP>/<mask>" or "dhcp"
HOST_IP_MASK="127.0.0.1/24"
HOST_DEFAULT_GW="127.0.0.1"
HOST_DNS=""

# NOTE :: Do not set HOST_INT as application will set it at run time. ::
HOST_INT=""
###############################################################################

function is_root() {
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root" 
          exit 1
    fi
}

function flush_ip_linux() {
    ip addr flush $HOST_INT
}

function set_ip_linux() {
    echo "setting ip address to $HOST_IP_MASK on $HOST_INT" 
    if [ "${HOST_IP_MASK,,}" == "dhcp" ]; then
        dhclient -r $HOST_INT
        return
    fi
    ip addr add $HOST_IP_MASK dev $HOST_INT 
}

function flush_ip_gw_linux() {
    ip route del default dev enp0s8
}

function set_ip_gw_linux() {
    if [ "${HOST_IP_MASK,,}" == "dhcp" ]; then
        return
    fi
    echo "setting default gw to $HOST_DEFAULT_GW on $HOST_INT"
    ip route add default via $HOST_DEFAULT_GW dev $HOST_INT
}

function set_ip_dns_linux() {
    if [ "${HOST_IP_MASK,,}" == "dhcp" ]; then
        return
    fi
    echo "TODO for dns setting"
}

function find_and_set_interface() {
    # Ignore wlan, vir, and lo interfaces from the listing.
    ifs="$(ip link | awk -F: '$0 !~ "vir|lo|wl|^[^0-9]"{print $2;getline}')"
    ifs_list=($ifs)
    echo "**** Interfaces ****"
    for i in "${!ifs_list[@]}"; do
       printf '     %d : %s \n' "$i" "${ifs_list[$i]}"
    done
    list_choice_max="$((${#ifs_list[@]} - 1))"
    printf 'Choose the interface to setup the network[0-%d]: ' "$list_choice_max"
    read choice
    if ! [[ "$choice" =~ ^[0-9]+$ ]]
    then
        echo "wrong choice, integer only.."
        exit 1
    fi
    if ((choice > $list_choice_max || choice < 0)); then
        echo "invalid choice, exiting.."
        exit 1
    fi
    HOST_INT="${ifs_list[$choice]}"
}

function display_nw() {
    printf "\n\n***********************************************\n" 
    ip addr show dev $HOST_INT
    printf "\n***********************************************\n"
    ip route show
    printf "\n***********************************************\n"
}

function main() {
    is_root
    distro="$(uname -s)"
    case "${distro}" in
        Linux*)
            find_and_set_interface
            flush_ip_linux
            flush_ip_gw_linux
            set_ip_linux
            set_ip_gw_linux
            set_ip_dns_linux
            display_nw
            ;;
        CYGWIN*)
            echo "Cygwin is not supported"
            ;;
        MINGW*)
            echo "Mingw is not supported"
            ;;
        *)
            echo "Unknown machine type"
            ;;
    esac
}


main
