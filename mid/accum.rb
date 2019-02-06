#Napisz funkcję accum, która działa w następujący sposób:

def accum(string)
  string = string.chars
  string = (string.map!.with_index.map { |elem, i| elem * ( i + 1 ) })
  puts (string.map! { |elem| elem.capitalize }).join("-")
end




accum("abcd") #=> "A-Bb-Ccc-Dddd"
accum("RqaEzty") #=> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") #=> "C-Ww-Aaa-Tttt"
