#Napisz funkcję, która dokona konwersji liczby w zapisie arabskim na liczbę w zapisie rzymskim. Funkcja powinna byc w stanie skonwertować liczby od 1 do 3000.

DIGITS = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX", 0 => ""}
TENS = { 1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC", 0 => "" }
HUNDREDS = { 1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => "CM", 0 => "" }
TOUSANDS = { 1 => "M", 2 => "MM", 3 => "MMM" }

def to_roman(number)
  result = []
  number = number.to_s.chars
  result = DIGITS[(number[0]).to_i] if number.length < 2
  result = TENS[(number[0]).to_i] + DIGITS[(number[1]).to_i] if number.length == 2
  result = HUNDREDS[(number[0]).to_i] + TENS[(number[1]).to_i] + DIGITS[(number[2]).to_i] if number.length == 3
  result = TOUSANDS[(number[0]).to_i] + HUNDREDS[(number[1]).to_i] + TENS[(number[2]).to_i] + DIGITS[(number[3]).to_i] if number.length == 4
  puts result
end

to_roman(2)
to_roman(19)
to_roman(221)
to_roman(2236)
