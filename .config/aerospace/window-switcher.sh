#!/bin/bash

aerospace list-windows --all --format '%{workspace} %{app-name}|%{window-title}%{right-padding}|%{window-id}' \
| awk -F '|' '{printf "%-20.20s  %s | %s\n", $1, $2, $3}' \
| sort \
| choose -n 15 \
| awk -F ' | ' '{print $NF}' \
| xargs -I {} aerospace focus --window-id {}
