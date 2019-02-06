puts "Podaj, do ilu mam odliczyć co 2:"

n = gets.to_i
count = 2

if n % 2 != 0
  n -= 1
end

if n < 1
  puts "Liczba musi być większa niż 1."
end

loop do

break if n < 2

while n >= 2
  puts count
  n -= 2
  count += 2
end

end
