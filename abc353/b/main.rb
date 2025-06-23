n, k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

seat = k
count = 0

a_arr.each do |a|
  if a > seat
    count += 1
    seat = (k - a)
  else
    seat -= a
  end
end

if seat != k
  count += 1
end

puts count
