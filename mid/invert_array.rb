#Napisz funkcję, która dla otrzymanej tablicy liczb całkowitych zwraca tablicę tych samych liczb, ale o przeciwnej wartości.

def invert_array(array)
  array.map! { |elem| elem * -1 }
  puts array.inspect
end


invert_array([1, 2, 3, 4, 5])
invert_array([1, -2, 3, -4, 5])
invert_array([0])
