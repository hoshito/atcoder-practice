n, m = gets.chomp.split(" ").map(&:to_i)
s_arr = []
n.times do
  set = Set.new
  gets.chomp.chars.each_with_index do |s, i|
    set.add(i) if s == "o"
  end
  s_arr << set
end

(1..10).each do |i|
  s_arr.combination(i) do |comb|
    set = Set.new
    comb.each do |s|
      set.merge(s)
    end
    if set.size == m
      puts i
      exit
    end
  end
end
