# Napisz funkcję obliczającą ilość samogłosek w podanym ciągu znaków. Jako samogłoskiuznajemy: a, e, i, o, u oraz y


def vowel_count(word)
  word = word.chars
  origin_word = word
  vowels = ["a", "e", "i", "o", "u", "y"]
  vowel_count = 0
  vowel_count_arr = word & vowels
  while vowel_count_arr.empty? == false
    vowel_count += vowel_count_arr.length
    word -= vowel_count_arr
    vowel_count_arr = word & vowels
  end
puts vowel_count = (origin_word - word).length
end



vowel_count("test")
vowel_count("foobar")
