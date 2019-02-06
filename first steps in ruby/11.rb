puts "Podaj ile razy chcesz być powitany/a:"

i = gets.to_i

while i > 0
  puts "Witaj"
  i = i - 1
end


#ta wersja jest bardziej poprawna jesli chodzi o zapis - i

i = 0
puts "Podaj ile razy chcesz być powitany/a:"
n = gets.to_i

while i < n
  puts "Witaj"
  i += 1
end
