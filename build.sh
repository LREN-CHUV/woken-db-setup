#!/usr/bin/env bash
set -e

if groups $USER | grep &>/dev/null '\bdocker\b'; then
  CAPTAIN="captain"
else
  CAPTAIN="sudo captain"
fi

BUILD_DATE=$(date --iso-8601=seconds) $CAPTAIN build
