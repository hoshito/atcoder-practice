s = gets.chomp
num = s[3..].to_i
if num != 316 && num >= 1 && num <= 349
  puts "Yes"
else
  puts "No"
end
