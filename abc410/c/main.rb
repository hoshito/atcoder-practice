n, q = gets.chomp.split.map(&:to_i)
arr = []
n.times do |i|
  arr << i + 1
end
index = 0
q.times do
  type, p, x = gets.chomp.split.map(&:to_i)
  i = index + p - 1
  i -= n if i > n - 1
  if type == 1
    arr[i] = x
  elsif type == 2
    puts arr[i]
  else
    k = p
    index = (index + (k % n)) % n
  end
end
