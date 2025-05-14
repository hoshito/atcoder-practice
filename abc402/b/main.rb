queue = []
ans = []
q = gets.chomp.to_i
q.times do
  query = gets.chomp.split(" ")
  if query[0] == "1"
    queue.push(query[1])
  else
    ans.push(queue.shift)
  end
end
puts ans.join("\n")
