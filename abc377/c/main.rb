n, m = gets.chomp.split.map(&:to_i)

hash = {}
m.times do
  a, b = gets.chomp.split.map(&:to_i)
  hash[a] ||= Set.new
  hash[a] << b
  (-2..2).each do |dx|
    (-2..2).each do |dy|
      next unless dx.abs + dy.abs == 3
      a2 = a + dx
      b2 = b + dy
      if a2 >= 1 && a2 <= n && b2 >= 1 && b2 <= n
        hash[a2] ||= Set.new
        hash[a2] << b2
      end
    end
  end
end

puts n ** 2 - hash.values.map(&:size).sum
