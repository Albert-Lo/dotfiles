#!/bin/bash
ssid="$(echo `/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` | grep -o 'SSID: .\+' | awk '{print $4}')"

if [[ $ssid == '' ]]; then
  echo ''
else
  echo "  $ssid"
fi
