#!/usr/bin/env bash
set -e

if [ $# -ne 2 ]; then
  echo "usage: $0 tag env"
  exit 1
fi

TAG=$1
ENV=$2

echo "==> Pulling image <=="
docker pull $TAG

echo "==> Deploy <=="
docker compose -f compose-${ENV}.yml up -d
