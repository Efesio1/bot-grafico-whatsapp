#!/bin/bash
cd /app/node-backend
npm install
cd /app
supervisord -c /etc/supervisord.conf