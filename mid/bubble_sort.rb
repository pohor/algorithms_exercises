#Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą sortowania bąbelkowego

class NumTable
  attr_accessor :numbers
  def initialize
    self.numbers = ARGV
  end
  def numbers_to_i
    numbers.map! { |number| number.to_i }
  end
  def bubble_sort
    length = numbers.length - 1
    if length == 0
    return numbers
    else
      length.times do
        numbers[0...-1].each_with_index.map do |j, index|
          if numbers[index] > numbers[index+1]
            numbers[index], numbers[index+1] = numbers[index+1], numbers[index]
          else
            next
          end
        end
      end
      numbers
    end
  end
end

table = NumTable.new
table.numbers_to_i
p table.bubble_sort
