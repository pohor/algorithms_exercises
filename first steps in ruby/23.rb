plus_result = 0
minus_result = 0
usr_input = 1

while usr_input != 0

  puts "Podaj liczbę:"

  usr_input = gets.to_i

  if usr_input == 0
    puts "Suma liczb dodatnich to #{plus_result}, a suma liczb ujemnych to #{minus_result}."
    exit (0)

  elsif usr_input > 0
    plus_result += usr_input

  elsif usr_input < 0
    minus_result += usr_input

  end

end
