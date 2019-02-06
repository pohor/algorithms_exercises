#argumenty wywołania metodą Sita Eratostenesa
#$ ruby sieve_of_eratosthenes.rb 1 10
# Prime numbers: 2, 3, 5, 7

class Array

  def sieve
      self.delete_if { |num| num == 1}
      n = self.last
      for i in self.first..Math.sqrt(n)
        self.delete_if { |e| e % i == 0 && e != i }
      end
    p self
  end

end

arry = Array(ARGV[0].to_i..ARGV[1].to_i)
arry.sieve
