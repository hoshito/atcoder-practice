arr = []
q = gets.chomp.to_i
q.times do
  type, c, x = gets.chomp.split.map(&:to_i)
  if type == 1
    arr << [c, x]
  else
    k = c
    tmp = 0
    while arr[0][0] < k
      k -= arr[0][0]
      tmp += arr[0][0] * arr[0][1]
      arr.shift
    end
    tmp += k * arr[0][1]
    arr[0][0] -= k
    puts tmp
  end
end
