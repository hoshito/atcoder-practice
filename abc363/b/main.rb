n, t, p = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

l.sort!.reverse!
puts [0, t - l[p - 1]].max
