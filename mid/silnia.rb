def silnia(n)
  if n == 0
    result = 1
  else
    result = silnia(n-1) * n
  end
  return result
end

puts silnia(3)
