n = gets.chomp.to_i
prefix_sum_class1 = [0]
prefix_sum_class2 = [0]
n.times do
  c, p = gets.chomp.split.map(&:to_i)
  if c == 1
    prefix_sum_class1 << prefix_sum_class1[-1] + p
    prefix_sum_class2 << prefix_sum_class2[-1] 
  else
    prefix_sum_class1 << prefix_sum_class1[-1]
    prefix_sum_class2 << prefix_sum_class2[-1] + p 
  end
end

q = gets.chomp.to_i
q.times do
  l, r = gets.chomp.split.map(&:to_i)
  a = prefix_sum_class1[r] - prefix_sum_class1[l - 1]
  b = prefix_sum_class2[r] - prefix_sum_class2[l - 1]
  puts "#{a} #{b}"
end
