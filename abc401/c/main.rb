n, k = gets.split.map(&:to_i)

mod = 10 ** 9
queue = Array.new(k, 1)
sum = k
(n - k + 1).times do
  queue.push(sum)
  tmp = queue.shift
  sum = sum - tmp + sum
  sum %= mod
end
puts queue.last
