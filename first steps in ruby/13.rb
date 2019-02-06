puts "Podaj, do ilu mam odliczyć:"

n = gets.to_i
count = 1

if n < 1
  puts "Liczba nie może być mniejsza niż zero."
end

loop do

break if n < 1

while n >= 1
  puts count
  n -= 1
  count += 1
end

end
