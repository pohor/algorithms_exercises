puts "Podaj mi dwie liczby, a podam Ci ich najwiekszy wspólny dzielnik. Podaj pierwsza liczbe:"

num_a = gets.to_i

puts "Podaj druga liczbe:"

num_b = gets.to_i

while num_b != 0
  num_c = num_a % num_b
  num_a = num_b
  num_b = num_c
end

puts "Najwiekszy wspólny dzielnik dla podanych przez Ciebie liczb to #{num_a}."
