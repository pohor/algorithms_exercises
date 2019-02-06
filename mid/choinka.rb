n = 1
n2 = 10


  0.step(21, 2) do n
    n2.times do
      print " "
    end
    n.times do
      print "*"
    end
    n2.times do
      print " "
    end
    n += 2
    n2 -= 1
    print "\n"
  end
