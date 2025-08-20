n = gets.to_i
numbers = gets.chomp.split.map(&:to_i)
class UniqueCounter
  attr_reader :frequency, :unique_count

  def initialize(array = [])
    @frequency = Hash.new(0)
    @unique_count = 0
    array.each { |number| add(number) }
  end

  def add(number)
    @frequency[number] += 1
    @unique_count += 1 if @frequency[number] == 1
  end

  def remove(number)
    return if @frequency[number] <= 0
    
    @frequency[number] -= 1
    @unique_count -= 1 if @frequency[number] == 0
  end
end

left_counter = UniqueCounter.new(numbers[..0])
right_counter = UniqueCounter.new(numbers[1..])

max_unique_sum = left_counter.unique_count + right_counter.unique_count
(1..n-2).each do |i|
  current_number = numbers[i]
  
  left_counter.add(current_number)
  right_counter.remove(current_number)
  
  current_sum = left_counter.unique_count + right_counter.unique_count
  max_unique_sum = [max_unique_sum, current_sum].max
end

puts max_unique_sum
