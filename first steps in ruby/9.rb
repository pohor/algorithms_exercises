puts "Podaj mi dwie liczby a powiem Ci, czy ułożone są w ciągu rosnącym."

puts "Podaj pierwszą liczbę:"
number1 = gets.to_i
puts "Podaj drugą liczbę:"
number2 = gets.to_i

puts "Podałeś/aś ciąg liczb: #{number1}, #{number2}."

if number1 < number2
 puts "Ciąg jest rosnący."
else
  puts "Ciąg nie jest rosnący."
end
