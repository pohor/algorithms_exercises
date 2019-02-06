range = (1..10)

3.times do
  range.step(1)  {|x| puts " " *(10-x) + "*" * x + "*" *x }
end
