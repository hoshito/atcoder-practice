n = gets.chomp.to_i
a_matrix = Array.new(n) { gets.chomp.split("") }
b_matrix = Array.new(n) { gets.chomp.split("") }

n.times do |i|
  n.times do |j|
    if a_matrix[i][j] != b_matrix[i][j]
      puts "#{i + 1} #{j + 1}"
      exit
    end
  end
end
