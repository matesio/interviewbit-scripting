#!/bin/bash
# Incase you have to take input, please take it from file named 'input' (without quotes) [e.g. cat input]
# Print your final output to console. Do not redirect to another file.
# E.g. Suppose the question is to print the content of a file.
#      Your solution should be 'cat input'(without quotes) instead of 'cat input > output'. That's it!
# Your code starts from here...

'''
For simplicity sake, you may assume:

input contains only one integer in each line
Every integer is in the range of [1, 4999] inclusive of 1 and 4999.
Example:

Assume that input has the following content:

1
2
3
4
5
Your script should output the following:

I
II
III
IV
V
'''

A=(Z I II III IV V VI VII VIII IX)
B=(Z X XX XXX XL L LX LXX LXXX XC)
C=(Z C CC CCC CD D DC DCC DCCC CM)
D=(Z M MM MMM MMM)

while read num
do
      if [ $num -ge 1000 ]
      then
          th=`expr $num / 1000`
          echo -n "${D[$th]}"
      fi
      
      num=`expr $num % 1000`
      
      if [ $num -ge 100 ]
      then
          h=`expr $num / 100`
          echo -n "${C[$h]}"
      fi

      num=`expr $num % 100`

      if [ $num -ge 10 ]
      then
          t=`expr $num / 10`
          echo -n "${B[$t]}"
      fi

      num=`expr $num % 10`
      if [ $num -ge 1 ]
      then
          echo -n "${A[$num]}"
      fi
      echo
done < input