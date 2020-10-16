# Write a program that
#   asks the user for a secret message
#   and 'encode's the message by replacing vowels with other characters
#   Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5

# Your program should print the encoded message.

p "Enter in the secret you want to encode"
message = gets.chomp.split
# .gsub(/\s+/, "").split("")
p message
new_words = []
message.each do |word|
  wt_a = word.gsub("a", "1")
  wt_e = wt_a.gsub("e", "2")
  wt_i = wt_e.gsub("i", "3")
  wt_o = wt_i.gsub("o", "4")
  wt_u = wt_o.gsub("u", "5")
  wt_A = wt_u.gsub("A", "1")
  wt_E = wt_A.gsub("E", "2")
  wt_I = wt_E.gsub("I", "3")
  wt_O = wt_I.gsub("O", "4")
  wt_U = wt_O.gsub("U", "5")
  new_words.push(wt_U)
end
p new_words.join(" ")
