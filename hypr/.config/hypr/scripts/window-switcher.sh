#!/usr/bin/env bash

windows=$(hyprctl clients -j | jq -r '.[] | "\(.workspace.id):\(.class):\(.title):\(.address)"')

if [ -z "$windows" ]; then
    echo "No open windows"
    exit 1
fi

menu_entries=""
declare -A window_map

while IFS=: read -r workspace class title address; do
    entry="$workspace: $class - $title"
    menu_entries+="$entry"$'\n'
    window_map["$entry"]="$workspace:$address"
done <<< "$windows"

selected=$(echo -e "$menu_entries" | wofi --dmenu --insensitive --allow-markup -p "Switch to window:")

if [ -z "$selected" ]; then
    exit 0
fi

workspace_and_address="${window_map[$selected]}"
workspace=$(echo "$workspace_and_address" | cut -d: -f1)
address=$(echo "$workspace_and_address" | cut -d: -f2)

hyprctl dispatch workspace "$workspace"
hyprctl dispatch focuswindow "address:$address"
