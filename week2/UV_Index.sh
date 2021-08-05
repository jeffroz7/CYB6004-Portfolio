#!/bin/bash

# UV Index Recommendation Calculator
	# 0-2 = Low (Minimal proection required.)
	# 3-7 = Morderate to High (Standard protection required.)
	# 8+ = Very High to Extreme (Full protection requires.)

read -p 'Enter a UV index value from 0 to 11: ' uv_val

if [ "$uv_val" -le 2 ]; then
	echo "UV level is Low. Minimal protection required."
elif [[ "$uv_val" -ge 3 ]] && [[ "$uv_val" -le 7 ]]; then
	echo "UV level is Moderate to High. Standard protection required."
elif [[ "$uv_val" -ge 8  ]] &&  [[ "$uv_val" -le 11 ]]; then
	echo "UV is Very High to Extreme. Full protection required."
else
	echo "Invalid value entered."
fi

exit 0