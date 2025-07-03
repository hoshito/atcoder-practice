n, k = gets.chomp.split(" ").map(&:to_i)
r_arr = gets.chomp.split(" ").map(&:to_i)

ans = []
(5 ** n).times do |i|
  num = i.to_s(5).rjust(n, '0')
  sum = 0
  tmp = []
  num.each_char do |c|
    x = c.to_i + 1
    tmp << x
    sum += x
  end
  next unless sum % k == 0

  flag = true
  tmp.each_with_index do |x, j|
    unless x <= r_arr[j]
      flag = false
      break
    end
  end
  next unless flag
  ans << tmp
end
#ans.sort!
ans.each do |x|
  puts x.join(" ")
end
