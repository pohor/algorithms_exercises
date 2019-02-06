puts  "Tu Twój rubynowy kantor z dolarami. Podaj obecny kurs złotówki:"

loop do

rate = gets.to_f

puts "Ile dolarów chcesz wymienić?"

usd = gets.to_f

exchange = usd * rate

puts "Otrzymujesz PLN #{exchange.round(2)}."

puts "Czy chcesz wymienić więcej? Tak - wpisz y, nie - wpisz n:"

go_on = gets.chomp

  break if go_on == "n"

puts "Jaki jest obecny kurs złotówki?"


end
