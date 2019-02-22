#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...
'''

Assume that input has following content:

the day is sunny 
it is the sunny day
we can go out
Your script should output the following, sorted by the ascending frequency:

1 can go it out we
2 day is sunny the


'''
cat input | tr -s ' ' '\n' | sort | uniq -c | sort | tr -s '[:space:]' | awk -F' ' '$1==last {printf " %s",$2; next} NR>1 {print "";} {last=$1; printf "%s",$0;} END{print "";}' | sed "s/^[ \t]*//"

