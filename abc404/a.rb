# a = 97, z = 122
s = Set.new(gets.chomp.split("").map(&:ord))
abc = Set.new((97..122).to_a)

ans = abc - s
puts ans.to_a[0].chr
