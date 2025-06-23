n, m = gets.chomp.split(" ").map(&:to_i)
h_arr = gets.chomp.split(" ").map(&:to_i)

h_arr.each_with_index do |h, i|
  m -= h
  if m < 0
    puts i
    exit
  end
end
puts n
