puts "Podaj mi trzy liczby a powiem Ci, która jest większa."

puts "Podaj pierwszą liczbę:"
number1 = gets.to_i
puts "Podaj drugą liczbę:"
number2 = gets.to_i
puts "Podaj trzecią liczbę:"
number3 = gets.to_i

puts "Podałeś/aś liczby: #{number1}, #{number2}, #{number3}."

if number1 > number2 && number1 > number3
 puts "Największą liczbą jest liczba #{number1}."
elsif number1 == number2 && number1 == number3
 puts "liczby są równe."
elsif number2 > number1 && number2 > number3
  puts "Największą liczbą jest liczba #{number2}"
else
  puts "Największą liczbą jest liczba #{number3}."
end
