a = gets.chomp.to_i
if 400 % a == 0
  puts 400 / a
else
  puts -1
end
