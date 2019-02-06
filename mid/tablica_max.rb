numbers = [1, 7, 11, 12, 87, 12, 5, 6]
puts "Tablica to zbiór liczb #{numbers}."

i = 0

max = numbers[0]

while i < numbers.count
  max = numbers[i] if max < numbers[i]
  i +=1
end


puts "Maksymalna liczba w tej tablicy to: #{max}."
