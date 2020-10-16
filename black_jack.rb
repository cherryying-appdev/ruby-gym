# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"
n1, n2 = gets.chomp.split
number1 = n1.to_i
number2 = n2.to_i

sum = number1 + number2
if sum > 21
  if number1 == 11
    number1 = 1
    p number1 + number2
  elsif number2 == 11
    number2 = 1
    p number1 + number2
  else
    p 0
  end
else
  p sum
end 