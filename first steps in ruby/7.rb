puts "Podaj mi dwie liczby a powiem Ci, która jest większa"
puts "Podaj pierwszą liczbę"
number1 = gets.to_i
puts "Podaj drugą liczbę"
number2 = gets.to_i

if number1 > number2
 puts "Większą liczbą jest #{number1}."
elsif number1 == number2
 puts "liczby są równe."
else
  puts "większą liczbą jest #{number2}."
end
