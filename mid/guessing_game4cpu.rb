guess = rand(0..99)

puts "Wymyśl jakąś liczbę w przedziale 0-99, a ja postaram się ją zgadnąć. Podawaj mi wskazówki - more lub less."

loop do


  puts guess

  usr_answ = gets.chomp

    if usr_answ == "more"
      guess = rand(guess..99)
    elsif usr_answ == "less"
      guess = rand(1..guess)
    elsif usr_answ == "ok"
      puts "Udało się!"
      exit(0)
    end

end
