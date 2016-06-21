#!/bin/bash
i3-msg -t get_workspaces | jq '.[] | select(.focused == true) | .name' | tr -d \" | awk '{print $2}'
