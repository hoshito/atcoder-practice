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

ans = 10 ** 9
hash.each do |k, v|
  v.each_cons(2) do |i, j|
    tmp = j - i
    ans = tmp if tmp < ans
  end
end

if ans == 10 ** 9
  puts -1
else
  puts ans + 1
end
