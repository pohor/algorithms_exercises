# Odległóść Hamminga to “wprowadzona przez Richarda Hamminga miara odmienności dwóch ciągów o takiej samej długości, wyrażająca liczbę miejsc (pozycji), na których te dwa ciągi się różnią” (Wikipedia)
# czyli:
# • odległość Hamminga dla ciągów 'aaa' i 'aab' wynosi 1.
# • odległość Hamminga dla ciągów 'aaabbb' i 'abaaba' wynosi 3.
# Napisz funkcję, która jako argumenty przyjmie dwa stringi i zwróci ich odległość Hamminga. Jeśli podane stringi nie są tej samej długości niech zwróci nil.

def hamming_distance(a, b)
  hamming_distance = 0
  a = a.to_s.chars
  b = b.to_s.chars
  if a.length != b.length
    puts
  else
    c = (a).zip(b)
    c.each do |el|
      if el[0] != el[1]
        hamming_distance += 1
      end
     end
  puts hamming_distance
  end
end





hamming_distance('1234', '1235') #=> 1
hamming_distance('GAGCCT', 'CATCGT') #=> 3
hamming_distance('1234', '12345') #=> false
hamming_distance('123', 'foobar') #=> nil
