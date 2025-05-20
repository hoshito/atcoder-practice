a1,a2,a3 = gets.chomp.split(" ").map(&:to_i)

if a1 * a2 == a3 || a1 * a3 == a2 || a2 * a3 == a1
  puts "Yes"
else
  puts "No"
end
