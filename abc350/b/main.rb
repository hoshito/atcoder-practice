n, q = gets.chomp.split(" ").map(&:to_i)
t_arr = gets.chomp.split(" ").map(&:to_i)
status = Array.new(n, true)
t_arr.each do |t|
  status[t - 1] = !status[t - 1]
end
puts status.count(true)
