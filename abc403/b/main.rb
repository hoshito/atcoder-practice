t = gets.chomp
u = gets.chomp

("a".."z").each do |c1|
  a1 = t.sub(/\?/, c1)
  ("a".."z").each do |c2|
    a2 = a1.sub(/\?/, c2)
    ("a".."z").each do |c3|
      a3 = a2.sub(/\?/, c3)
      ("a".."z").each do |c4|
        a4 = a3.sub(/\?/, c4)
        if a4.include?(u)
          puts "Yes"
          exit
        end
      end
    end
  end
end
puts "No"
