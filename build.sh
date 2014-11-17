#!/bin/bash

# Get start time
res1=$(date +%s.%N)

#Use Prebuilt Chromium
export USE_PREBUILT_CHROMIUM=1

#Setting up environment.

. build/envsetup.sh

#Lunching

lunch

# bacon device

mka bacon

echo -e ""

# Get elapsed time
res2=$(date +%s.%N)
echo -e "${bldgrn}Total time elapsed: ${txtrst}${grn}$(echo "($res2 - $res1) / 60"|bc ) minutes ($(echo "$res2 - $res1"|bc ) seconds)${txtrst}"
