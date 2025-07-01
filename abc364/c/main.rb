n, x, y = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)

a_arr.sort!.reverse!
b_arr.sort!.reverse!

tmp_x = 0
cnt_x = 0
a_arr.each do |a|
  cnt_x += 1
  tmp_x += a
  if tmp_x > x
    break
  end
end

tmp_y = 0
cnt_y = 0
b_arr.each do |b|
  cnt_y += 1
  tmp_y += b
  if tmp_y > y
    break
  end
end

puts [cnt_x, cnt_y].min

