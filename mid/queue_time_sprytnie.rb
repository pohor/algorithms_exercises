def queue_time (time_array, cash_desk_number)
 cash_desk_array =  [0] * cash_desk_number
 time_array.each do |time|
  cash_desk_array[cash_desk_array.index (cash_desk_array.min)] += time
end
 cash_desk_array.max
end
puts queue_time([5, 3, 4], 3)
puts queue_time([10, 2, 3, 3], 2)
puts queue_time([2, 3, 10], 2)
# [0,0]
# 10
# [10, 0]
# 2
# [10, 2]
# 3
# [10, 5]
# 3
# [10, 8]


def queue_time(kolejka, liczba_kas)
  kasy = []
  liczba_kas.times{ kasy.push(0) }
  i = 0
  kolejka.each do |cz|
    kasy[min_index(kasy)] += cz
  end
  puts "#{kasy[max_index(kasy)]}"
 end

 queue_time(b, a)
