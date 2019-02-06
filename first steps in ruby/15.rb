n = gets.to_i
i = 1

puts "Podaj, do ilu mam odliczyć:"

if n <= 0
  puts "Liczba musi być większa niż 0."
end

while i != n
  puts i
  puts -i
  i += 1
end
