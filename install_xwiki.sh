#!/bin/bash


wget -q "https://maven.xwiki.org/public.gpg" -O- | sudo apt-key add -
sudo wget "https://maven.xwiki.org/stable/xwiki-stable.list" -P /etc/apt/sources.list.d/

sudo apt-get update

if sudo apt-cache search xwiki | grep -e 'common';
then
    sudo apt-get install xwiki-common
fi

sudo apt-get update && sudo apt-get upgrade 

