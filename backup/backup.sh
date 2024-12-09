#!/bin/bash

mkdir /home/minecraft/backups/current
cp -r /home/minecraft/server/world /home/minecraft/backups/current

tar -czf /home/minecraft/backups/$(date '+%Y-%m-%d_%H-%M').tar.gzip -C /home/minecraft/backups/current . 

rm -rf /home/minecraft/backups/current 
