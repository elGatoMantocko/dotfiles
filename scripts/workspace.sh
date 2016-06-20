#!/bin/bash

markup=
workspaces_status=$(i3-msg -t get_workspaces)    
output=$1
for w in $(jq '.[] | .num' <<< "$workspaces_status"); do
    ws_output=$(jq -r '.[] | select(.num == '$w') | .output' <<< "$workspaces_status")
    [[ -n $output && $output != $ws_output ]] && continue                                           

    visible=$(jq '.[] | select(.num == '$w') | .visible' <<< "$workspaces_status")
    focused=$(jq '.[] | select(.num == '$w') | .focused' <<< "$workspaces_status")
    urgent=$(jq '.[] | select(.num == '$w') | .urgent' <<< "$workspaces_status")

    unset icon
    icon=$(jq '.[] | select(.num == '$w') | .name' <<< "$workspaces_status" | tr -d \" | awk '{print $2}')

    unset mk_active mk_visible
    # [[ $visible == true ]] && mk_visible='bgcolor="#5ba7c3"' 
    [[ $focused == true ]] && markup="<span $mk_visible $mk_active> $icon </span> "
    # markup+="<span $mk_visible $mk_active> $icon </span> "
done

echo $markup
