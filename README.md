# DevOps Project

![formula for success](./code.png)

---

These are the steps and tasks I did over the course of the DevOps course.

## Overview

The main tasks that were done, were continual repetitions of all of the practices and shared in class tutorials!

There is a *daily* `cron` job that takes a **snapshot** of the containers with the current date as an *id* of each snapshot. The snapshots are then *backed-up* with the `ZFS` file-system. The backed-up `.raw` files are then transoprted to my personal computer (this step is not automated since my computer is not up 24/7).

Shell scripts for the server-side backups and server to client can be seen under `backup.sh` and `backup_raw.sh`.

## Ansible Playbook

The plaubook I wrote try to be as *indempotent* as possible. Here the [Ansible Documentation](http://docs.ansible.com) came in real handy, since every module was clearly explained.

The `XWiki`'s are installed via a compact distribution, that contains all of the `tomcat8` and `pgsql` dependecies.

*Step1* - was to create a basic *one-time* shell script (`install_xwiki.sh`) that would do the job on a basic setup. \

*Step2* - was to go by intuition and re-write the script line-by-line into an `ansible` playbook. In reality this turned out better than expected. It worked. \

*Step3* - was to fix all of the mistakes, warnings, and unnecessary code from the playbook. This made it more in the spirit of `ansible` and also I got the chance to spend some time with their documentation. \

## Bonus(es)

These are just things that I have additionally setup, in order to create a more secure server.

- My account on the server has root privileges, whith the root password is disabled. (duh)
- `iptables` have been configured so that only a small set of `ip` addresses can access the server via `ssh`.
- Connection to the server is only done through `ssh`.
- I have non-local backups of the containers.
