#!/bin/bash
apt update
apt -y install nginx
mv default /etc/nginx/sites-available/