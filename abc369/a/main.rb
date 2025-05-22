a, b = gets.chomp.split(" ").map(&:to_i)
if a == b
  puts 1
elsif (a - b).abs % 2 == 0
  puts 3
else
  puts 2
end
