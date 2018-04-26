#!bin/bash

lxc snapshot xwiki1 xwiki1-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/xwiki1@snapshot-xwiki1-snap$(date +%Y%m%d) > ~/xwiki1.raw 

lxc snapshot xwiki2 xwiki2-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/xwiki2@snapshot-xwiki2-snap$(date +%Y%m%d) > ~/xwiki2.raw

lxc snapshot monitor monitor-snap$(date +%Y%m%d) > /dev/null 2>&1
sudo zfs send lxd/main/containers/monitor@snapshot-monitor-snap$(date +%Y%m%d) > ~/monitor.raw
