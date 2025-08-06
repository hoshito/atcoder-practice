n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

zero = s.split("1").filter{|x| x.length > 0}
one = s.split("0").filter{|x| x.length > 0}

if s[0] == "0"
  one[k - 1], zero[k - 1] = zero[k - 1], one[k - 1]
  puts zero.zip(one).flatten.join("")
else
  one[k - 1], zero[k - 2] = zero[k - 2], one[k - 1]
  puts one.zip(zero).flatten.join("")
end
