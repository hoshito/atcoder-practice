def getsAndReturnIntArr
  gets.chomp.split.map(&:to_i)
end
def getsAndReturnInt
  gets.chomp.to_i
end

n, q = getsAndReturnIntArr()
a_arr = getsAndReturnIntArr()

val_to_count = Hash.new(0)
a_arr.each do |a|
  val_to_count[a] += 1
end

ans = []
count_sum = n
b_max = [10 ** 6, a_arr.sum].min
tmp = 0
(1..b_max).each do |b|
  ans[b] = tmp + 1
  tmp += count_sum
  count_sum -= val_to_count[b]
end

a_max = a_arr.max
q.times do
  b = getsAndReturnInt()
  if b == 1
    puts 1
  elsif b > a_max
    puts -1
  else
    puts ans[b]
  end
end
