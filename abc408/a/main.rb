n, s = gets.chomp.split(" ").map(&:to_i)
t_arr = gets.chomp.split(" ").map(&:to_i)

t_arr.unshift(0)
t_arr.each_cons(2) do |t1, t2|
  if t2 - t1 > s
    puts "No"
    exit
  end
end

puts "Yes"
