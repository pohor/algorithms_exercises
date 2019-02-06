# Pangram to zdanie, w którym przynajmniej raz pojawia się każda litera alfabetu. Napisz metodę, która sprawdzi czy podany ciąg znaków jest pangramem dla języka polskiego.

def pangram?(string)
  alphabet = ["m", "ę", "ż", "n", "y", "b", "ą", "d", "ź", "c", "h", "r", "o", "ń", "p", "u", "ł", "k", "t", "w", "ó", "j", "i", "s", "z", "e", "ś", "ć", "f", "l", "a", "g"]
  string = string.downcase.chars
  pangram = alphabet & string
  puts pangram == alphabet
end





pangram?('Dość błazeństw, żrą mój pęk luźnych fig') #=> true
pangram?('Losowy ciąg znaków') #=> false
