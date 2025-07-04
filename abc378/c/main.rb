n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
hash = {}

ans = []
a_arr.each_with_index do |a, i|
  if hash[a]
    ans << hash[a]
  else
    ans << -1
  end
  hash[a] = i + 1
end
puts ans.join(" ")
