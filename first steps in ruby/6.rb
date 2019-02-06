puts "Podaj mi dwie liczby, zrobię z nimi kilka sztuczek! Podaj pierwszą:"

usr_num1 = gets.to_i

puts "Podaj drugą liczbę:"

usr_num2 = gets.to_i

diff = usr_num1 - usr_num2
sum = usr_num1 + usr_num2

if sum > diff
    puts "Suma większa od różnicy."
  elsif sum == diff
    puts "Suma jest równa różnicy."
  else
    puts "Suma jest mniejsza od różnicy."
end
