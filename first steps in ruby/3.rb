loop do

puts "Podaj mi numer miesiąca a podam Ci ile jest w nim dni."

month_num = gets.to_i

  if month_num == 1 || 3 || 5 || 7 || 8 || 10 || 12
    puts "Liczba dni w podanym przez Ciebie miesiącu to 31"
  elsif month_num == 2
    puts "Liczba dni w podanym przez Ciebie miesiącu to 28"
  else
    puts "Liczba dni w podanym przez Ciebie miesiącu to 30"
  end

puts "Czy chcesz zobaczyć, ile jest dni w innym miesiącu? Jeśli tak, wpisz y, jeśli nie, wpisz n."

go_on = gets.chomp

break if go_on == "n"

end
