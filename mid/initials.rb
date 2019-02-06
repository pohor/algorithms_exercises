# InicjałyNapisz metodę initials, która wypisuje inicjały osoby na podstawie jej pełnego imienia.Wszystkie znaki inicjałów powinny być pisane z dużej litery

def initials(name)
  name = name.upcase
  initials = ""
  name.split.each do |elem|
    initials += name[elem][0]
  end
  puts initials
end




initials('Jan Kozlowski')
initials('Jan Krzysztof Rakoczy')
initials('marcin nowak')
