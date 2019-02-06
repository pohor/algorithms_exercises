puts  "Tu Twój rubynowy kantor z dolarami. Podaj obecny kurs dolara:"

loop do

rate = gets.to_f

puts "Ile złotówek chcesz wymienić?"

pln = gets.to_f

exchange = pln / rate

puts "Otrzymujesz $#{exchange.round(2)}."

puts "Czy chcesz wymienić więcej? Tak - wpisz y, nie - wpisz n:"

go_on = gets.chomp

  break if go_on == "n"

puts "Jaki jest obecny kurs dolara?"


end
