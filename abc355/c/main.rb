n, t = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

row = Array.new(n, 0)
col = Array.new(n, 0)
cross1 = 0
cross2 = 0

hash = {}
(1..n).each do |i|
  (1..n).each do |j|
    hash[n * (i - 1) + j] = [i, j]
  end
end

a_arr.each_with_index do |a, index|
  i, j = hash[a]
  row[i - 1] += 1
  col[j - 1] += 1
  cross1 += 1 if i == j
  cross2 += 1 if i + j == n + 1
  if row[i - 1] == n || col[j - 1] == n || cross1 == n || cross2 == n
    puts index + 1
    exit
  end
end
puts -1
