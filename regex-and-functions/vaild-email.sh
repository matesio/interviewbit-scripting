#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...
'''

Email should be of the form local@domain.com
There can only be alphanumberic characters in the local part email address.
The following characters are valid in the local part of the email as long as they are not the first character.
-, _, +, .

Email address can not start with a number.
Domain name can only contain alphanumeric characters and -.
com part can have atmost one ., for e.g. co.uk or co.in is valid but as.df.gh is invalid
Example:

Assume that input has the following content:

abc@example.co.uk
abc@example.com
abc<>@example.com
abc@example@gmail.com
Your script should output the following:

abc<>@example.com
abc@example@gmail.com

'''
cat input | grep -xv "^[A-Za-z][-_\.\+A-Za-z0-9]*[@][-A-Za-z0-9]*[\.][A-Za-z]*" | grep -xv "^[A-Za-z][-_\.\+A-Za-z0-9]*[@][-A-Za-z0-9]*[\.][A-Za-z]*[\.][A-Za-z]*"