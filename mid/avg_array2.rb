def avg_array(*arrays)
  return false if arrays.map { |array| array.count }.uniq.count != 1

  arrays.transpose.map do |group|
    group.sum / group.count.to_f
  end
end

puts avg_array([1, 3, 5], [3, 5, 7]).inspect #=> [2, 4, 6]
puts avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17]).inspect #=> [8, 19.75, 11.25, 13.5]

def avg_array_zip(*array)

  array_count = array.length
  avg_array = []

  avg_array = array[0].zip(*array[1..-1])

  avg_array.map! {|array| ( array.sum.to_f / array_count ) }

  puts avg_array.inspect

 end

puts avg_array_zip([1, 3, 5], [3, 5, 7]).inspect #=> [2, 4, 6]
puts avg_array_zip([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17]).inspect #=> [8, 19.75, 11.25, 13.5]
