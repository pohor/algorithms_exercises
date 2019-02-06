#Napisz program sortujący zadaną jako argumenty wywołania tablicę liczb metodą quick sort
# ruby quick_sort.rb 74 77 64 19 43 47 77 66 47 60 7 97 71 87 95 79 7 19 43 47 47 60 64 66 71 74 77 77 79 87 95 97
class Array
 def quick_sort
    #pivot = self.last

  sorting(sort_partition)

 end

 def sort_partition
   pivot = self.last
   arr = self.partition {|num| num < pivot }
   return arr
 end

 def sorting(table)
   table_a = table[0]
   table_b = table[1]
   pivot1 = table_a.last
   i1 = 0
   j1 = 0

   table_a(0...-1).map do |i1, j1|
     if table_a[i1] <= pivot1
       table_a[i1], table_a[j1] = table_a[j1], table_a[i1]
       i1 += 1
       j1 += 1
     else
       table_a[i1], table_a[j1] = table_a[i1], table_a[j1]
       i1 += 1
       next
     end

   end
   return table_a
   #pivot2 = table_b.last
   #i2 = 0
   #j2 = 0
   #while i2 < pivot2
    # if table_a[i2] <= pivot2
    #   table_a[i2], table_a[j2] = table_a[j2], table_a[i2]
    #   i2 += 1
    #   j2 += 1
     #else
      # i2 += 1
       #next
     #end
   #end

 end

end

table = ARGV.map {|num| num.to_i }
p table.quick_sort
