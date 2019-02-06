#Napisz program, który policzy ilość wystąpień poszczególnych słów w zadanym jako argument stringu. Zignoruj wielkość liter.

def word_count(words)
  words = words.downcase.split
  word_count = {}
  words.each do |word|
    word_count[word] = word_count[word].to_i + 1
  end
puts word_count
end




word_count('foo Foo bar bar Bar') #=> { "foo" => 2, "bar" => 3 }
word_count('Losowy ciąg znaków ciąg') #=> { "losowy" => 1, "ciąg" => 2, "znaków" => 1}
