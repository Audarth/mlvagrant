#! /bin/sh
echo "running $0 $@"

service MarkLogic stop
rpm -e MarkLogic
if [ "$1" == "true" ]; then
  rm -rf /var/opt/MarkLogic/*
fi