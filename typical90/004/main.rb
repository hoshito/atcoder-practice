h, w = gets.chomp.split.map(&:to_i)
a_matrix = h.times.map { gets.chomp.split.map(&:to_i) }

row_sum = Array.new(h, 0)
col_sum = Array.new(w, 0)

h.times do |i|
  w.times do |j|
    a = a_matrix[i][j]
    row_sum[i] += a
    col_sum[j] += a
  end
end

ans = Array.new(h) { Array.new(w, 0) }
h.times do |i|
  w.times do |j|
    ans[i][j] = row_sum[i] + col_sum[j] - a_matrix[i][j]
  end
  puts ans[i].join(" ")
end
