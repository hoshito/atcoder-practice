n, a = gets.chomp.split(" ").map(&:to_i)
t_arr = gets.chomp.split(" ").map(&:to_i)
time = 0
t_arr.each do |t|
  if t > time
    time = t + a
  else
    time += a
  end
  puts time
end
