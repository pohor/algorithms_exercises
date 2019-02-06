#Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą quick sort
# ruby quick_sort.rb 74 77 64 19 43 47 77 66 47 60 7 97 71 87 95 79 7 19 43 47 47 60 64 66 71 74 77 77 79 87 95 97


class Array
  def quick_sort(numbers, lewy = 0, prawy = numbers.size-1)
    i = (lewy+prawy)/2
    piwot = numbers[i]
    numbers[i], numbers[prawy] = numbers[prawy],numbers[i]
    j = 0
    i = 0
    while i < prawy
      if numbers[i] <= piwot
        numbers[i], numbers[j] = numbers[j], numbers[i]
        j +=1
      end
      i +=1
    end
    numbers[j], numbers[prawy] = numbers[prawy], numbers[j]
    quick_sort(numbers, lewy, j-1) if lewy < (j-1)
    quick_sort(numbers, j+1,prawy) if (j+1) < prawy
    p numbers
  end
end

table = ARGV.map {|num| num.to_i }
table.quick_sort(table)
