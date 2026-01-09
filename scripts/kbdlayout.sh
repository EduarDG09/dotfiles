#!/usr/bin/env bash

until [ -S "$SWAYSOCK" ]; do
  sleep 1
done

listen-for-focus-changes() {
  swaymsg -mt subscribe '["window"]' | jq --unbuffered -r "try select(.change == \"focus\") | .container.app_id"
}

LAST_STATE=""

listen-for-focus-changes | while read -r app_id; do
  if [[ "$app_id" == "kitty-float" || "$app_id" == "kittyfixed" || "$app_id" == "kitty" ]]; then
    CURRENT_STATE="terminal"
  else
    CURRENT_STATE="other_app"
  fi

  if [[ "$CURRENT_STATE" != "$LAST_STATE" ]]; then
    if [[ "$CURRENT_STATE" == "terminal" ]]; then
      echo "Switching to default layout"
      swaymsg input type:keyboard xkb_variant '""'
    else
      echo "Switching to Intl layout"
      swaymsg input type:keyboard xkb_variant intl
    fi
    LAST_STATE="$CURRENT_STATE"
  fi
done
