# Wykorzystując funkcję leap_year? z zadania ‘Rok przestępny’ napisz funkcję ‘leap_years’,
# która otrzymuje tablicę liczb całkowitych, każda liczba reprezentuje rok i zwraca tablicę
# tylko z liczbami reprezentującymi rok przestępny.

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

def leap_years(years)
  leap_years = []
  years.each do |year|
     leap_years.push(year) if leap_year?(year)
  end
puts leap_years.inspect
end









leap_years([2011, 2012, 2015, 2016, 2018])
leap_years((2000..2100).to_a)
