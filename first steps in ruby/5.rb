puts  "Wpisz, ile chcesz przejechać, a powiem Ci ile zużyjesz paliwa i ile zapłacisz."


consumption = 6.5.to_f
rate = 4.30.to_f

loop do

puts "Ile chcesz przejechać?"

distance = gets.to_i

usage = consumption * distance/100
expense = usage * rate

puts "Zużycie paliwa dla spalania #{consumption}l, ceny paliwa #{rate}zł i dystansu #{distance}km to #{usage.round(2)}l a koszt to  #{expense.round(2)}zł."

puts "Czy chcesz sprawdzić dla innego dystansu? Tak - wpisz y, nie - wpisz n:"

go_on = gets.chomp

puts "Dzięki!"

  break if go_on == "n"

puts "Czy Twój samochód ma inne spalanie niż #{consumption}l? Tak, wpisz y, nie wpisz n:"

answer_consumption = gets.chomp

  if answer_consumption == "y"
      puts "Jakie jest spalanie?"
      other_consumption = gets.to_f
      consumption = other_consumption
  end

puts "Czy cena paliwa jest inna niż #{rate}zł? Tak, wpisz y, nie wpisz n:"

answer_rate = gets.chomp

    if answer_rate == "y"
      puts "Jaka jest cena?"
      other_rate = gets.to_f
      rate = other_rate
    end

end
