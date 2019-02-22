#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...
#!/bin/bash

'''

Given a csv file(with , as a delimiter) named input with the following fields:

FirstName
LastName
Address
City
CountryCode
Email
PhoneNumber
Write a bash script to combine both CountryCode and PhoneNumber with a - and add a + before country code and remove country codes from the csv file

Example:

Assume that input has the following content:

Lotty,Kilner,08 Boyd Place,Jiangqiao,04,lkilner0@epa.gov,433-447-7966
Benoite,Ducket,9 Harper Alley,Tenenkou,22,bducket1@friendfeed.com,724-995-7769
Your script should output the following:

Lotty,Kilner,08 Boyd Place,Jiangqiao,lkilner0@epa.gov,+04-433-447-7966
Benoite,Ducket,9 Harper Alley,Tenenkou,bducket1@friendfeed.com,+22-724-995-7769


'''
while IFS=',' read -r f1 f2 f3 f4 f5 f6 f7
do
    echo "$f1,$f2,$f3,$f4,$f6,+$f5-$f7"
done < input