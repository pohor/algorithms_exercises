result = 0

loop do

  puts "Podaj liczbę:"

  usr_input = gets.to_i

  if usr_input == 0

    puts "Podałeś/aś zero. Suma Twoich liczb parzystych to #{result}."
    exit (0)

  elsif usr_input % 2 == 0

      result += usr_input
  end

  break if usr_input == 0

end
