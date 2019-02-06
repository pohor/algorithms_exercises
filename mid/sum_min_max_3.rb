# Napisz funkcję, która jako argument przyjmie tablicę liczb i zwróci sumę wszystkich
# elementów poza wartością najwyższą i najniższą.

def sum_array(array)
  array.sort[1...-1].sum
end

puts sum_array([1, 2, 3, 4])
puts sum_array([12, 4, 0, -8])
puts sum_array([12, 4])
puts sum_array([120, 7, 145, -10, -15])
