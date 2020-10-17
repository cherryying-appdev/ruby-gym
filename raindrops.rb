# Convert a number to a string, the contents of which depend on the number's factors.

# If the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor, just pass the number's digits straight through.

# Examples
# 28's factors are 1, 2, 4, 7, 14, 28.
# In raindrop-speak, this would be a simple "Plong".
# 30's factors are 1, 2, 3, 5, 6, 10, 15, 30.
# In raindrop-speak, this would be a "PlingPlang".
# 34 has four factors: 1, 2, 17, and 34.
# In raindrop-speak, this would be "34".

# Your Job
# Write a program that asks the user for an Integer and prints a String based on the rules above.

# Examples
# When the input is 1

#   "Enter an integer"
#   1
#   "1"

# When the input is 5

#   "Enter an integer"
#   5
#   "Plang"

# When the input is 21

#   "Enter an integer"
#   5
#   "PlingPlang"

require "prime"
p "Enter an integer"
integer = gets.chomp.to_i
division = Prime.prime_division(integer)
components = []

division.each do |div|
  components.push(div[0])
end

prime_list = components.join(" ")
changed = []

prime_list.split.each do |prime_num|
  if prime_num == "3"
    changed.push(prime_num.gsub("3", "Pling"))
  elsif prime_num == "5"
    changed.push(prime_num.gsub("5", "Plang"))
  elsif prime_num == "7"
    changed.push(prime_num.gsub("7", "Plong"))
  end
end

if changed == []
  p integer.to_s
else
  p changed.join("")
end