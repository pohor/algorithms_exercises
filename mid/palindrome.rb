# Napisz funkcję palindrome?, która otrzymuje ciąg znaków i zwraca wartość logiczną (true/false) w zależnośći czy dany ciąg jest palindromem.

def palindrome?(input)
  normalized_input = input.downcase.split.join
  normalized_input == normalized_input.reverse
end

puts palindrome?('Kobyła ma mały bok')
