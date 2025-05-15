q = gets.chomp.to_i

a = Array.new(100, 0)
q.times do
  query = gets.chomp.split.map(&:to_i)
  if query[0] == 1
    a.push(query[1])
  else
    puts a.pop
  end
end
