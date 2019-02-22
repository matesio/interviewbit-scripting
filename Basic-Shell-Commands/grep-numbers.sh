#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...

'''
Example:
Assume that the input has the following content:

axes12
w143th
qwer
Then your new command should ouput the following content

12
143

'''
cat input | grep -Eo '[0-9]*'

