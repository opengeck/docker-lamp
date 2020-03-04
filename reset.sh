#!/usr/bin/env bash
cd "$(dirname "$(readlink -f "$0")")" || exit

echo 'Reset docker container.'
docker-compose down
sudo rm -r ./srv/mysql ./srv/phpmyadmin 2>/dev/null
docker-compose build \
  && docker-compose up -d --remove-orphans \
  && echo 'done'