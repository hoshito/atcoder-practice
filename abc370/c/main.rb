s = gets.chomp.chars
t = gets.chomp.chars
grater_index_arr = []
less_index_arr = []

s.length.times do |i|
  sc = s[i]
  tc = t[i]
  if sc > tc
    grater_index_arr << i
  elsif sc < tc
    less_index_arr << i
  end
end

x = []
grater_index_arr.each do |i|
  s[i] = t[i]
  x << s.join
end
less_index_arr.reverse.each do |i|
  s[i] = t[i]
  x << s.join
end
puts x.length
x.each do |ans|
  puts ans
end
