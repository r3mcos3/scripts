#!/bin/bash

function ssh_ha {
    ssh root@10.10.50.149
    exit 0
}

function ssh_unraid {
    ssh -p 2224 root@10.10.50.60
    exit 0
}

function mnt_ha {
    sshfs root@10.10.50.149:/config /home/remco/homeassistant
    echo "mount home assistant..."
    exit 0
}

function mnt_unraid {
    sshfs -p 2224 root@10.10.50.60:/mnt/user /home/remco/unraid
    echo "mount unraid..."
    exit 0
}

function umnt_ha {
    umount /home/remco/homeassistant
    echo "umount home assistant..."
    exit 0
}

function umnt_unraid {
    umount /home/remco/unraid
    echo "umount unraid..."
    exit 0
}

function umnt_all {
    umount /home/remco/homeassistant && umount /home/remco/unraid
    echo "umount all..."
    exit 0
}

while :
do
    echo "Menu"
    echo "1. Ssh To Home Assistant"
    echo "2. Ssh To Unraid"
    echo "3. Mount Home Assistant Share"
    echo "4. Mount Unraid Server"
    echo "5. Umount Home Assistant Share"
    echo "6. Umount Unraid Server"
    echo "7. Unmount All"
    echo "8. Exit"
    read -p "Make Your Choice:" choice

    case $choice in
    1)
        ssh_ha;;
    2)
        ssh_unraid;;
    3)
        mnt_ha;;
    4)
        mnt_unraid;;
    5)
        umnt_ha;;
    6)
        umnt_unraid;;
    7)
        umnt_all;;
    8)
        echo "exiting..."
        exit 0
        ;;
    *)
        echo "Invalid Choice Please Try Again"
        ;;
    esac
done