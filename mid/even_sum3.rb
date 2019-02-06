puts "Podaj, do ilu odliczyć:"

n = gets.to_i
i = 0

range = (2..n)
puts range.step(2).sum
