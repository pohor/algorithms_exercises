# Napisz funkcję, ktora przyjmie liczbę całkowitą i pozamienia jej cyfry miejscami w taki sposób, aby utworzyć jak najwyższą liczbę.

def highest_number(number)
  highest_array = []
  number = number.to_s.chars.map {|num| num.to_i}
  while number.empty? != true
    highest_array << number.max
    number.delete(number.max)
  end
  puts highest_array.join
end


highest_number(132) #=> 321
highest_number(1464) #=> 6441
highest_number(165423) #=> 654321
