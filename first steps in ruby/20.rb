puts "Podaj mi liczbę:"

usr_num = gets.to_i
sum = 0
div = 1

while div < usr_num
  sum += (usr_num / div) % 10
  div *= 10
end

puts "Suma cyfr w podanej przez Ciebie liczbie to #{sum}."
