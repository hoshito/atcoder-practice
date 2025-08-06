h, w = gets.chomp.split.map(&:to_i)
area = []
min_i = 10000
max_i = 0
min_j = 10000
max_j = 0
h.times do |i|
  area << gets.chomp.chars
  w.times do |j|
    if area[i][j] == "#"
      min_i = i if i < min_i
      max_i = i if i > max_i
      min_j = j if j < min_j
      max_j = j if j > max_j
    end
  end
end

(min_i..max_i).each do |i|
  (min_j..max_j).each do |j|
    if area[i][j] == "."
      puts "No"
      exit
    end
  end
end
puts "Yes"
385,400
