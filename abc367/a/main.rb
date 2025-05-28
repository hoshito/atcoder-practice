a, b, c = gets.chomp.split(" ").map(&:to_i)
if b < c
  if b < a && a < c
    puts "No"
  else
    puts "Yes"
  end
else
  if c <= a && a <= b
    puts "Yes"
  else
    puts "No"
  end
end

