#Napisz funkcję, która przyjmie dowolną liczbę tablic (o tej samej długości) i zwróci jedną tablicę składającą się z wartości średnich elementów na poszczególnych indeksach przyjętych tablic.

def avg_array(*array)

  array_count = array.length
  avg_array = []

  avg_array = array[0].zip(*array[1..-1])

  avg_array.map! {|array| ( array.sum.to_f / array_count ) }

  puts avg_array.inspect

end


avg_array([1, 3, 5], [3, 5, 7]) #=> [2, 4, 6]
avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17]) #=> [8, 19.75, 11.25, 13.5]
