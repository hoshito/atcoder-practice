def getsAndReturnIntArr
  gets.chomp.split.map(&:to_i)
end

def getsAndReturnInt
  gets.chomp.to_i
end

n = getsAndReturnInt()
a_arr = [0] + getsAndReturnIntArr()

jminusa_to_j = Hash.new{|hash, key| hash[key] = [] }
(1..n).each do |i|
  a = a_arr[i]
  jminusa_to_j[i - a] << i
end

ans = 0
(1..n).each do |i|
  a = a_arr[i]
  j_index_arr = jminusa_to_j[a + i]
  next if j_index_arr.nil?
  
  index = j_index_arr.bsearch_index{|j| j > i}
  next if index.nil?

  ans += j_index_arr.size - index
end
puts ans
