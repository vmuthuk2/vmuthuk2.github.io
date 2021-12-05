#!/bin/bash
set -euo pipefail

date=$(date +"%Y-%m-%d")
title=$(echo "$@" | tr "[:upper:]" "[:lower:]" | tr " " -)

cat >> "$date-$title.md" << EOF
---
title: $@
tags: []
---
EOF
