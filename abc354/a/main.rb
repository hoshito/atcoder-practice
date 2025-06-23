h = gets.chomp.to_i

(1..).each do |i|
  if h < 2 ** i - 1
    puts i
    exit
  end
end
