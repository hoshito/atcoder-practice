n, t, a = gets.chomp.split(" ").map(&:to_i)
tmp = n - t - a
if t == a
  puts "No"
elsif t < a
  if t + tmp >= a
    puts "No"
  else
    puts "Yes"
  end
else
  if a + tmp >= t
    puts "No"
  else
    puts "Yes"
  end
end

