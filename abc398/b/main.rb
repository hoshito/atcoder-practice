a = gets.chomp.split(" ").map(&:to_i)

num_of = Array.new(14, 0)

a.each do |x|
  num_of[x] += 1
end

num_of.sort!.reverse!
if num_of[0] >= 3 && num_of[1] >= 2
  puts "Yes"
else
  puts "No"
end
