n = gets.to_i
a_arr = gets.split.map(&:to_i)
hash = {}
a_arr.each_with_index do |a, i|
  if hash[a].nil?
    hash[a] = [i]
  else
    hash[a] << i
  end
end

ans = -1
max = -1
hash.each do |k, v|
  if v.size == 1
    if k > max
      max = k
      ans = v[0] + 1
    end
  end
end
puts ans
