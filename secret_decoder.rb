# We have a program to encode our messages, now can you write a way to decode them? 
# Remember our sercret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
# Your program should:
# - ask for an encoded message
# - decode the message
# - print the decoded message.

# (Make sure to capitalize the first word in the decoded message)

p "Enter in the secret you want to decode"
message = gets.chomp.split
# .gsub(/\s+/, "").split("")
p message
new_words = []
message.each do |word|
  wt_a = word.gsub("1", "a")
  wt_e = wt_a.gsub("2", "e")
  wt_i = wt_e.gsub("3", "i")
  wt_o = wt_i.gsub("4", "o")
  wt_u = wt_o.gsub("5", "u")
  new_words.push(wt_u)
end

p new_words.join(" ").capitalize
