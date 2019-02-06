# Napisz funkcję obliczającą ilość samogłosek w podanym ciągu znaków. Jako samogłoskiuznajemy: a, e, i, o, u oraz y


def vowel_count(word)
  word = word.chars
  vowel_count = 0
  while word.include?("a")
    vowel_count += 1
    word.delete_at(word.index("a"))
  end
  while word.include?("e")
    vowel_count += 1
    word.delete_at(word.index("e"))
  end
  while word.include?("i")
    vowel_count += 1
    word.delete_at(word.index("i"))
  end
  while word.include?("o")
    vowel_count += 1
    word.delete_at(word.index("o"))
  end
  while word.include?("u")
    vowel_count += 1
    word.delete_at(word.index("u"))
  end
  while word.include?("y")
    vowel_count += 1
    word.delete_at(word.index("y"))
  end
puts vowel_count
end






vowel_count("test")
vowel_count("foobar")
