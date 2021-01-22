#!/bin/bash

name="backup-$(date '+%Y-%m-%d-%I-%M-%p').tar.gz"
echo $name

megadf --config=/home/pi/mega.cnf

tar -czf $name /home/pi/Development

megaput --config=/home/pi/mega.cnf --path=/Root/rpi-backups --disable-previews "/home/pi/$name"

rm /home/pi/$name
