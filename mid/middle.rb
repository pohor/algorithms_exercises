#Napisz funkcję, która znajdzie i zwróci środkowy znak w stringu. Jeśli długość stringa jest liczbą parzystą zwróć dwa środkowe znaki.

def middle(word)
  middle = ""
  word = word.chars
  if word.length % 2 == 0
    middle = word[(word.length / 2)] + word[(word.length / 2)-1]
  else
    middle = word[(word.length / 2)]
  end
  puts middle
end


middle("abc") #=> "b"
middle("middle") #=> "dd"
middle("tesTing") #=> "T"
