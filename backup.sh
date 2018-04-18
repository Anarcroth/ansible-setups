lxc snapshot xwiki1 xwiki1-snap$(date +%Y%m%d)
sudo zfs send lxd/main/containers/xwiki1@xwiki1-snap$(date +%Y%m%d)

lxc snapshot xwiki2 xwiki2-snap$(date +%Y%m%d)
sudo zfs send lxd/main/containers/xwiki2@xwiki2-snap$(date +%Y%m%d)

lxc snapshot monitor monitor-snap$(date +%Y%m%d)
sudo zfs send lxd/main/containers/monitor@monitor-snap$(date +%Y%m%d)
