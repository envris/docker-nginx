#!/bin/bash

# Start services
/etc/init.d/nginx start


sleep 5s

# Exec cmds
tail -f /var/log/nginx/*
