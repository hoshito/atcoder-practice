s = gets.chomp
if s.length % 2 == 1
  puts "No"
  exit
end

(0..(s.length / 2 - 1)).each do |i|
  if s[i * 2] != s[i * 2 + 1]
    puts "No"
    exit
  end
end

hash = {}
s.each_char do |c|
  if hash[c].nil?
    hash[c] = 1
  else
    hash[c] += 1
  end
end

hash.each do |k, v|
  if v != 2
    puts "No"
    exit
  end
end
puts "Yes"

