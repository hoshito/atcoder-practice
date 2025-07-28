s = gets.chomp
arr = []
s.chars.each_with_index do |c, i|
  if c == "#"
    arr << i + 1
  end
end
((0..arr.length-1) % 2).each do |i|
  puts "#{arr[i]},#{arr[i+1]}"
end
