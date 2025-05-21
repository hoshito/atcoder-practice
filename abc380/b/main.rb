s = gets.chomp.split("|")
s.map! { |x| x.length }
puts s[1..].join(" ")
