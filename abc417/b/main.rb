def getsAndReturnIntArr
  return gets.chomp.split.map(&:to_i)
end

_n, _m = getsAndReturnIntArr()
a_arr = getsAndReturnIntArr()
b_arr = getsAndReturnIntArr()

b_arr.each do |b|
  index = a_arr.index(b)
  a_arr.delete_at(index) unless index.nil?
end

puts a_arr.join(" ")
