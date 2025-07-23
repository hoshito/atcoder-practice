n, m, q = gets.split.map(&:to_i)
hash = {}
(1..n).each do |i|
  hash[i] = { all: false, set: Set.new }
end
q.times do
  a, x, y = gets.split.map(&:to_i)
  if a == 1
    hash[x][:set].add(y)
  elsif a == 2
    hash[x][:all] = true
  else
    puts hash[x][:set].include?(y) || hash[x][:all] ? "Yes" : "No"
  end
end
