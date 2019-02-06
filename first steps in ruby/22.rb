plus_result = 0
minus_result = 0
usr_input = 1

while usr_input != 0

  puts "Podaj liczbę:"

  usr_input = gets.to_i

  if usr_input == 0

      if plus_result == 0 && minus_result == 0
        puts "Podałeś/aś 0."
      elsif plus_result > 0 && minus_result < 0
        puts "Wystąpiła liczba ujemna oraz wystąpiła liczba dodatnia."
      elsif plus_result > 0 && minus_result == 0
        puts "Wystąpiła liczba dodatnia."
      elsif plus_result == 0 && minus_result < 0
        puts "Wystąpiła liczba ujemna."
      end
      exit (0)

  elsif usr_input > 0
    plus_result += usr_input

  elsif usr_input < 0
    minus_result += usr_input
  end


end
