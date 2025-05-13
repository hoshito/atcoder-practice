r, x = gets.split.map(&:to_i)
if x == 1 && 1600 <= r && r <=2999
  puts "Yes";
elsif x == 2 && 1200 <= r && r <= 2399
  puts "Yes";
else
  puts "No";
end
