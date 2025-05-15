n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

check_arr = Array.new(m + 1, 0)
check_arr[0] = 1
a.each do |x|
  if x <= m 
    check_arr[x] += 1
  end
end

if check_arr.min == 0
  puts 0
  exit
end

ans = 0
n.times do
  ans += 1
  x = a.pop
  if x <= m
    check_arr[x] -= 1
    if check_arr[x] == 0
      puts ans
      exit
    end
  end
end
