a, b, c = gets.chomp.split(" ").map(&:to_i)

if a == b && b == c
  puts "Yes"
elsif a + b == c || b + c == a || c + a == b
  puts "Yes"
else
  puts "No"
end
