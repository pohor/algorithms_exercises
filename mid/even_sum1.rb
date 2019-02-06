puts "Podaj, do ilu odliczyć:"

n = gets.to_i
i = 0
even_sum = 0

while i < n
  i += 1
  puts "i = #{i}"
  if i % 2 == 0
    even_sum += i
    i += 1
    puts "even_sum = #{even_sum}"
  end
end

puts even_sum
