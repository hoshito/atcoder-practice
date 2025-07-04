s = gets.chomp
t = Set.new(gets.chomp.chars)

(1..s.size - 1).each do |i|
  if s[i] == s[i].upcase && !t.include?(s[i - 1])
    puts "No"
    exit
  end
end
puts "Yes"
