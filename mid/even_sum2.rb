puts "Podaj, do ilu odliczyć:"

n = gets.to_i
i = 0
even_sum = 0

range = (2..n)
range.step(2) {|i| even_sum += i}

puts even_sum
