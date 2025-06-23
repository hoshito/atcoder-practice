n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
box = []
n.times do |i|
  a = a_arr[i]
  box.push(a)
  while box.length >= 2 && box[-1] == box[-2] do
    exp = box[-1]
    box.pop(2)
    box.push(exp + 1)
  end
end
puts box.length

