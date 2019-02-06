# Wszystkie znaki reprezentowane są przez kilkuelementowe serie sygnałów – krótkich (kropek) i długich (kresek).
# Przykładowo literę a kodujemy za pomocą “.-”.
# Zadanie polega na napisaniu funkcji decode_morse, która dla otrzymanego kodu, zwórci jego odszyfrowaną wersję.


def decode_morse(sentence)
  morse = { ".-" => "a", "-..." => "b",	"-.-." => "c", "-.." => "d", "." => "e", "..-." => "f", "--." => "g", "...." => "h", ".." => "i", ".---" =>  "j", "-.-" => "k", ".-.." => "l", "--" => "m", "-." => "n", "---" => "o", ".--." => "p", "--.-" => "q", ".-." => "r", "..." => "s", "-" => "t", "..-" => "u", "...-" => "v", ".--" =>  "w", "-..-" =>  "x", "-.--" => "y", "--.." => "z", " " => " ", ".----" => "1", "..---" => "2", "...--" => "3", "....-" => "4", "....." => "5", "-...." => "6", "--..." => "7", "---.." => "8", "----." => "9", "-----" => "0"}
  sentence = sentence.split
  sentence.map! do |letter|
    letter = morse[letter]
  end
  puts sentence.join.upcase
end





decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..') #=> "HELLOWORLD"
