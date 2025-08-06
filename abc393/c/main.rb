n, m = gets.chomp.split.map(&:to_i)
hash = {}
ans = 0
m.times do
  u, v = gets.chomp.split.map(&:to_i)
  u, v = v, u if v < u

  if u == v || hash[u]&.include?(v)
    ans += 1
  end

  if hash[u].nil?
    hash[u] = Set.new
  end
  hash[u].add(v)

end
puts ans
