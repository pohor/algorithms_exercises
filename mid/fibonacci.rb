puts "Ile elementów ciągu chcesz wyświetlić?:"

usr_count = gets.to_i

x = 0
y = 1

usr_count.times do
  puts "#{x}"
  puts "#{y}"
  x += y
  y += x
end
