# Napisz metodę foldr , która pobierze pewną początkową wartość accumulator oraz tablicę, a następnie dla każdego elementu pobranej tablicy wywoła przekazany blok przekazując do niego aktualną wartość akumulatora oraz element. Wartość zwróconą przez blok należy przypisać do akumulatora, a na końcu zwrócić.

def foldr(acc, array)
  array.inject(acc) { |acc, elem| elem - acc }
end


# Przykład:
puts foldr(0, [3, 4, 65, 9]) { |acc, elem| elem - acc }
# => 55 # 3 - (4 - (65 - (9 - 0)))
# 3-0 = 3
# 4 - 3 = 1
# 65 - 1 = 64
# 9 - 64 = -55
# 0 - 1 -
