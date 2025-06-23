n = gets.chomp.to_i
sholder_head_arr = Array.new(n) { gets.chomp.split(" ").map(&:to_i) }

sum = sholder_head_arr.map{|sholder, head| sholder }.sum

ans = 0
sholder_head_arr.each do |sholder, head|
  tmp = sum - sholder + head
  if tmp > ans
    ans = tmp
  end
end

puts ans
