# Napisz funkcję, która jako argumenty przyjmuje dwie tablice i zwraca tablicę z
# elemantami wspólnymi podanych tablic.
# Np:

def common_elements(array_a, array_b)
  common_array = array_a & array_b
  common_array
end




puts common_elements([1, 2, 3, 4, 5], [4, 5, 6]).inspect
puts common_elements(['a', 'b', 'c', 'd'], ['c','d', 'e']).inspect
puts common_elements([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227]).inspect
