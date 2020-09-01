#!/usr/bin/env bash
# a regex script
#First File r0
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt
#Second File r1
awk 'match($0, /(\w+). My favorite sandwich is (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt | tee r1_output.txt
#Third file r2
sed -E 's/\* sandwich with ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt | tee r2_output.txt

