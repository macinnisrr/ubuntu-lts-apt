#!/usr/bin/env bash
rsync -auvxzz --progress --partial ./ /etc/apt/
apt update
apt install $(cat /etc/apt/installed.list)
