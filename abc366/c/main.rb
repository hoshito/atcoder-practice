q = gets.chomp.to_i
hash = {}
set = Set.new
q.times do
  n, x = gets.chomp.split(" ").map(&:to_i)
  if n == 1
    if hash[x].nil?
      hash[x] = 1
    else
      hash[x] += 1
    end
    set.add(x)
  elsif n == 2
    hash[x] -= 1
    if hash[x] == 0
      hash.delete(x)
      set.delete(x)
    end
  else
    puts set.size
  end
end
