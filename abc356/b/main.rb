n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
n.times do
  x_arr = gets.chomp.split(" ").map(&:to_i)
  m.times do |i|
    a_arr[i] -= x_arr[i]
  end
end

if a_arr.all?{ |a| a <= 0 }
  puts "Yes"
else
  puts "No"
end

