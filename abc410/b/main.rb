n, q = gets.chomp.split(" ").map(&:to_i)
x_arr = gets.chomp.split(" ").map(&:to_i)
box = Array.new(n, 0)
ans = []

x_arr.each do |x|
  if x >= 1
    box[x - 1] += 1
    ans << x
  else
    min = box.min
    box.each_with_index do |b, i|
      if b == min
        box[i] += 1
        ans << (i + 1)
        break
      end
    end
  end
end
puts ans.join(" ")
