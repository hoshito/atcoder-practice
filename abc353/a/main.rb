n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i)

target = h_arr[0]
h_arr.each_with_index do |h, i|
  if h > target
    puts i + 1
    exit
  end
end
puts -1
