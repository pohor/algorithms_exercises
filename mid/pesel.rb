puts "Podaj numer PESEL:"

pesel = gets.chomp.chars

if pesel.count != 11
  puts "Podany pesel nie ma 11 cyfr a zatem nie jest poprawny."
  exit
end

suma_kontrolna=1 * pesel[0].to_i + 3 * pesel[1].to_i + 7 * pesel[2].to_i + 9 * pesel[3].to_i + 1 * pesel[4].to_i + 3 * pesel[5].to_i + 7 * pesel[6].to_i + 9 * pesel[7].to_i + 1 * pesel[8].to_i + 3 * pesel[9].to_i + 1 * pesel[10].to_i


if suma_kontrolna % 10 == 0
  puts "pesel jest poprawny"
else
  puts "pesel nie jest poprawny."
end

puts "Informacje o PESELu:"
  if pesel[9].to_i % 2 == 0
    puts "- płeć: żeńska"
  else
    puts "- płeć: męska"
  end
puts "- data urodzenia to 19#{pesel[0,2].join}-#{pesel[2,2].join}-#{pesel[4,2].join}."
