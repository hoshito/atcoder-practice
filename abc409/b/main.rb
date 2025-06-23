n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

(n + 1).times do |i|
  x = n - i
  count = a_arr.count { |a| a >= x }
  if count >= x
    puts x
    exit
  end
end
