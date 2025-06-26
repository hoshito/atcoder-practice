n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
mod = 10 ** 8
a_arr.map! { |a| a % mod }

ans = 0
a_arr.each do |a|
  ans += a
  puts ans.inspect 
  ans %= mod
  puts ans.inspect
end

ans *= (n - 1)

puts ans
