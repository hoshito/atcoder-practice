n, l, r = gets.chomp.split(" ").map(&:to_i)
ans = (1..n).to_a
tmp = ans.slice!(l - 1, r - l + 1)
tmp.reverse!
ans.insert(l - 1, *tmp)
puts ans.join(" ")
