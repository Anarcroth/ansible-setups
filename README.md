# DevOps Project

$$ Ansible Playbooks + Shell Scripts + A lot of mistakes = My Project $$

---

These are the steps and tasks I did over the course of the DevOps course, explained in small and great detail.

## Overview

The project consists of a main server, running 3 `LXD` containers, over `ZFS` with RAIDZ 2. Two of the containers are `XWiki` servers, the third one is a monitoring service with `Icinga2`. The `XWiki`s are running on top of a `tomcat8` serverlet with a `PostgreSQL`.

There is a *daily* `cron` job that takes a **snapshot** of the containers with the current date as an *id* of each snapshot. The snapshots are then *backed-up* with the `ZFS` file-system. The backed-up `.raw` files are then transoprted to my personal computer (this step is not automated since my computer is not on 24/7).

## Ansible Playbook(s)

The plaubooks I wrote try to be as *indempotent* as possible. Here the [Ansible Documentation](http://docs.ansible.com) came in real handy, since every module was clearly explained.

The `XWiki`s are installed via a compact distribution, that contains all of the `tomcat8` and `pgsql` dependecies. The `pgsql` database has it's crenedtials stored in a `.yml` file in `/XWiki/vars/` directory, where the file is held *encrypted*.

## Bonus(es)

These are just things that I have additionally setup, in order to create a more secure server.

- My account on the server has root privileges, whith the root password is disabled.
- `iptables` have been configured so that only a small set of `ip` addresses can access the server via `ssh`.
- Connection to the server is only done through `ssh`.
