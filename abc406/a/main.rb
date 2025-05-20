a,b,c,d = gets.chomp.split(" ").map(&:to_i)

if a * 60 + b > c * 60 + d
  puts "Yes"
else
  puts "No"
end

