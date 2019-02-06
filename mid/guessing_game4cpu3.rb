min = 0
max = 99
guess = min + (max - min) / 2

puts "Wymyśl jakąś liczbę w przedziale 0-99, a ja postaram się ją zgadnąć. Podawaj mi wskazówki - more lub less."


loop do

  puts guess

  usr_answ = gets.chomp

    if usr_answ == "more"
      min = guess + 1
      guess = max - ((max - min) / 2)


    elsif usr_answ == "less"
      max = guess - 1
      guess = min + ((max - min) / 2)


    elsif usr_answ == "ok"
      puts "Udało się!"
      exit(0)

    end

end
