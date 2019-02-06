# Zaimplementuj funkcję, która wypisze, który z graczy wygrywa w grze papier, kamień, nożyce. Funkcja powinna przyjmować dwa argumenty odpowiadające wyborom graczy i działać w następujący sposób:
#nożyce są silniejsze od papieru, ponieważ go tną,
#kamień jest silniejszy od nożyc, ponieważ je tępi,
#papier jest silniejszy od kamienia, ponieważ go owija.

def rps(elem1, elem2)
  if elem1 == elem2
    puts "Remis"
  elsif elem1 == "scissors" && elem2 == "paper" || elem1 == "rock" && elem2 == "scissors" || elem1 == "paper" && elem2 == "rock"
    puts "Gracz 1 wygrywa"
  else
    puts "Gracz 2 wygrywa"
  end
end





rps('scissors', 'paper') #=> 'Gracz 1 wygrywa'
rps('rock', 'paper') #=> 'Gracz 2 wygrywa'
rps('scissors', 'scissors') #=> 'Remis'
