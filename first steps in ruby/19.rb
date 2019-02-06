puts "Podaj, do ilu mam odliczyć:"

n = gets.to_i
i = 1
sum = 0

while i <= n
    sum += i**2
    i += 1
end

puts "Suma kwadratów 1..n to #{sum}."
