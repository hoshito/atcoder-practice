n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
w_arr = gets.chomp.split(" ").map(&:to_i)

box = []
n.times do |i|
  box << { count: 0, backet: [] }
end

n.times do |i|
  a = a_arr[i]
  w = w_arr[i]
  b = box[a - 1]
  b[:count] += 1
  b[:backet] << w
end

ans = 0
box.each do |b|
  b[:backet].sort!
  b[:backet].pop
  ans += b[:backet].sum
end
puts ans
