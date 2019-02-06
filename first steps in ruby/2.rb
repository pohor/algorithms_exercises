puts "Podaj mi liczbę dni, a podam Ci ile mieści się w nich sekund:"

days = gets.to_i

seconds = days * 24 * 60 * 60

puts "Liczba sekund mieszcząca się w #{days} dniach to #{seconds} sekund."
