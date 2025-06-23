n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

ans = []
n.times do |i|
  while a_arr[i] != i + 1 do
    j = a_arr[i] - 1
    a_arr[i], a_arr[j] = a_arr[j], a_arr[i]
    if i > j
      i, j = j, i
    end
    ans << [i + 1, j + 1]
  end
end

puts ans.length
ans.each do |pair|
  puts "#{pair[0]} #{pair[1]}"
end
