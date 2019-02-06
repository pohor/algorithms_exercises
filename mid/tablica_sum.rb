numbers = [1, 7, 11, 12, 87, 12, 5, 6]
puts "Tablica to zbiór liczb #{numbers}."
i = 0
suma = 0

while i < numbers.count
  suma += numbers[i]
  i += 1
end
puts "Suma z elementów z tej tablicy to #{suma}."
