n, m, k = gets.chomp.split(" ").map(&:to_i)
arr = []
m.times do
  arr << gets.chomp.split(" ")
end

test = []
arr.each do |x|
  c = x[0].to_i
  keys = Set.new(x[1..-2].map(&:to_i))
  r = x[-1]
  test << [c, keys, r]
end

ans = 0
(2 ** n).times do |i|
  bit = i.to_s(2).rjust(n, '0').chars.map(&:to_i)
  bit_index = []
  bit.each_with_index do |b, j|
    if b == 1
      bit_index << j + 1
    end
  end

  flag = true
  test.each do |c, keys, r|
    cnt = bit_index.count{|j| keys.include?(j) }
    unless cnt >= k && r == "o" || cnt < k && r == "x"
      flag = false
      break
    end
  end
  if flag
    ans += 1
  end
end
puts ans
