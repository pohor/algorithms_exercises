#Załóż, że '#' działa jak klawisz backspace w ciągu znaków. Oznacza to że string "a#bc#d" jest równy "bd".
#puts  jest równy "ac"
#"abc##d######" jest równy ""
# "######" jest równy ""
# "" jest równy ""

def backspace_in_string(string)
  array = string.chars

  while array.include?("#")
    index = array.index("#")

    if index > 0 && array[index-1] != "#"
      array.delete_at(index)
      array.delete_at(index-1)
    else
      array.delete_at(index)
    end
  end
  array.join
end


backspace_in_string(abc#d##c)
