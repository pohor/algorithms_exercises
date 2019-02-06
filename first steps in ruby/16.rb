n = gets.to_i
i = 1

puts "Podaj, do ilu mam odliczyć:"

if n < 1
  puts "Liczba musi być większa niż 0."
end

loop do

  break if n < 1

  while n != 0
    puts i
    puts -n
    i += 1
    n -= 1
  end

end
