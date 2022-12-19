#!/bin/bash

REPORTS_DIR=$$HOME/Scripts/__coding_style_tmp
EXPORT_FILE="$REPORTS_DIR/coding-style-reports.log"

cp -r . $REPORTS_DIR

sudo docker pull ghcr.io/epitech/coding-style-checker:latest && sudo docker image prune -f

sudo docker run  --rm -i \
  -v "$REPORTS_DIR":"/mnt/delivery" \
  -v "$REPORTS_DIR":"/mnt/reports"  \
  ghcr.io/epitech/coding-style-checker:latest "/mnt/delivery" "/mnt/reports"

cat "$EXPORT_FILE"

rm -rf $REPORTS_DIR
