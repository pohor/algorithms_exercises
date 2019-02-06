result = 0

loop do

  puts "Podaj liczbę:"

  usr_input = gets.to_i

  if usr_input == 0

    puts "Podałeś/aś zero. Suma Twoich liczb to #{result}."
    exit (0)

  end

  break if usr_input == 0

  while usr_input != 0

    result += usr_input

  end

end
