# Napisz funkcję consecutives_sum, która dla trzymanej tablicy liczb obliczy sumę kolejnych liczb o tej samej wartości.
# Funkcja powinna zwracać tablice tych sum.

def consecutives_sum(numbers)
  consecutives_sum = numbers.dup
  numbers.each_with_index do |n, index|
    while n == numbers[index + 1]
      consecutives_sum[index] += numbers[index+1]
      consecutives_sum.delete_at((index+1))
    end
  end
p consecutives_sum
p numbers
end




consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1]) #=> [1, 12, 0, 4, 6, 1]
consecutives_sum([1, 1, 7, 7, 3]) #=> [2, 14, 3]
consecutives_sum([-5, -5, 7, 7, 7, 12, 0]) #=> [-10, 21, 12, 0]
