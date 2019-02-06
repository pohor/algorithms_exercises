def silnia(n)
  result = 1
  i = n
  if n > 1
    while i > 1 do
      result *= i
      i -= 1
    end
  end
  return result
end

puts silnia(3)
puts silnia(5)
puts silnia(1)
puts silnia(0)
