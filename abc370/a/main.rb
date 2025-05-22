l, r = gets.chomp.split(" ").map(&:to_i)
if l == r
  puts "Invalid"
elsif l == 1
  puts "Yes"
else
  puts "No"
end
