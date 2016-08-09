#!/bin/bash

battery_info=`ioreg -rc AppleSmartBattery`
connected=$(echo $battery_info | grep -o '"ExternalConnected" = [A-z]\+' | awk '{print $3}')
full=$(echo $battery_info | grep -o '"FullyCharged" = [A-z]\+' | awk '{print $3}')


if [[ $full == 'Yes' ]]; then
  percentage=100
else
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
  percentage=$(echo "($current_charge/$total_charge)*100" | bc -l | cut -d '.' -f 1)
fi

color='#[fg=colour196]'
icon=" "

if [[ $percentage -gt 30 ]]; then
  color='#[fg=colour226]'
  icon=" "
fi

if [[ $percentage -gt 60 ]]; then
  color='#[fg=colour046]'
  icon=" "
fi

if [[ $connected == 'Yes' ]]; then
  icon=""
fi

echo -n $color
echo "$icon $percentage%"

