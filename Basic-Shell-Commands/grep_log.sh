#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...
'''
Given a log file named input. You have to write a bash script which prints all the lines which contains mysql commands.

Note

Assume that all the mysql commands start with mysql::.
Example:

Assume that the input has the following content:

mysql:: SELECT * FROM courses;
rails:: Course.all
mysql:: SELECT id FROM courses;
rails:: Course.pluck(:id)
Then your bash script should output the following:

mysql:: SELECT * FROM courses;
mysql:: SELECT id FROM courses;
Our engineers were able to write this much code, can you complete it for us?
'''

cat input | grep "mysql::"