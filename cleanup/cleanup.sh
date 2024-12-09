#!/bin/bash

rm -rf /home/minecraft/backups/*

bash /home/minecraft/scripts/backup.sh

DAILY_BACKUP_COUNT=$(ls -1 /home/minecraft/daily-backups | wc -l)

if [ $DAILY_BACKUP_COUNT -gt 3 ]
then
        rm -rf /home/minecraft/daily-backups/*
fi


cp /home/minecraft/backups/* /home/minecraft/daily-backups
