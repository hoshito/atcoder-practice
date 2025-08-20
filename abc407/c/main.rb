class TDisplay
  def initialize(s)
    @target = s.chomp.chars.map(&:to_i)
    @button_a_counter = 0
    @button_b_counter = 0
  end
  
  def pop_and_countup
    digit = @target.pop
    @button_b_counter += (digit - @button_b_counter) % 10
    @button_a_counter += 1
    return digit
  end

  def get_count
    return @button_a_counter + @button_b_counter
  end
end

s = gets.chomp
t_display = TDisplay.new(s)
s.length.times do
  t_display.pop_and_countup
end
puts t_display.get_count
