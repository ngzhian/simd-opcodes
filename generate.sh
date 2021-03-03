#!/bin/bash
awk -F ',' '$5 == "1" { print }' instructions.txt > instructions-with-memargs.txt
awk -F ',' '$6 != "0" && $6 != "undefined" { print }' instructions.txt > instructions-with-lane-immediates.txt
awk -F ',' '$5 == "0" && $6 == "0" { print }' instructions.txt > instructions-without-immediates.txt
