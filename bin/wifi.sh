#!/bin/bash
ssid="$(echo `/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` | grep -e ' SSID: .\+ MCS' -o | sed "s/^ SSID: //" | sed "s/ MCS$//")"

if [[ $ssid == '' ]]; then
  echo ''
else
  echo "  $ssid"
fi
