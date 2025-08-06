n, q = gets.chomp.split.map(&:to_i)
arr = Array.new(n + 1, 1)
arr2 = [0]
(1..n).each do |i|
  arr2 << i
end

count = 0
q.times do
  i, p, h = gets.chomp.split.map(&:to_i)
  if i == 1
    a = arr2[p]
    arr[a] -= 1
    arr[h] += 1
    count -= 1 if arr[a] == 1
    count += 1 if arr[h] == 2
    arr2[p] = h
  else
    puts count
  end
end
