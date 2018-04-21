#!bin/bash

lxc snapshot xwiki1 xwiki1-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/xwiki1@xwiki1-snap$(date +%Y%m%d) > /dev/null 2>&1 

lxc snapshot xwiki2 xwiki2-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/xwiki2@xwiki2-snap$(date +%Y%m%d) > /dev/null 2>&1

lxc snapshot monitor monitor-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/monitor@monitor-snap$(date +%Y%m%d) > /dev/null 2>&1
