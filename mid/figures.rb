# Napisz program, który ma klasę Figura oraz dziedziczące z niej klasy: Koło, Prostokąt, Kwadrat oraz Trapez. Każda z tych klas powinna posiadać odpowiednio dopasowany do reprezentowanej figury konstruktor (przyjmujący jako parametry niezbędne dane do wykonania obliczeń) oraz bezparametrowe metody do obliczania pola oraz obwodu.
# Zadbaj o jak najmniejszą ilość powtórzonego kodu. Oblicz pola oraz obwody:

class Figure
  def unit
  end
  def area
  end
  def perimeter
  end
end

module UnitConverter
  def unit_converter(amount,unit)
    if amount >= 100 && unit == "mm"
      unit = "cm"
      amount = (amount / 100).round(2)
    elsif amount >= 100 && unit == "cm"
      unit = "m"
      amount = (amount / 100).round(2)
    elsif amount >= 1000 && unit == "m"
      unit = "km"
      amount = (amount / 1000).round(2)
    else
      unit = unit
      amount = amount.round(2)
    end
    puts amount.to_s + unit
  end
end


class Circle < Figure
  include UnitConverter
  attr_accessor :radius, :unit, :Pi
  def initialize(radius,unit)
    self.radius = radius
    self.unit = unit
    self.Pi = 3.14
  end
  def area
    area = (((self.radius)**2)*self.Pi).round(2)
    unit = self.unit
    unit_converter(area,unit)
  end
  def perimeter
    perimeter = (2*self.Pi)*self.radius
    unit = self.unit
    unit_converter(perimeter,unit)
  end
end

class Rectangle < Figure
  include UnitConverter
  attr_accessor :sidea, :sideb, :unit
  def initialize(sidea, sideb, unit)
    self.sidea = sidea
    self.sideb = sideb
    self.unit = unit
  end
  def area
    area = self.sidea * self.sideb
    unit = self.unit
    unit_converter(area,unit)
  end
  def perimeter
    perimeter = (sidea*2) + (sideb*2)
    unit = self.unit
    unit_converter(perimeter,unit)
  end
end

class Square < Figure
  include UnitConverter
  attr_accessor :side, :unit
  def initialize(side,unit)
    self.side = side
    self.unit = unit
  end
  def area
    area = (self.side)**2
    unit = self.unit
    unit_converter(area,unit)
  end
  def perimeter
    perimeter = (self.side)*4
    unit = self.unit
    unit_converter(perimeter,unit)
  end
end

class Trapezoid < Figure
  include UnitConverter
  attr_accessor :radixa, :radixb, :height, :unit
  def initialize(radixa,radixb,height,unit)
    self.radixa = radixa
    self.radixb = radixb
    self.height = height
    self.unit = unit
  end
  def area
    area = ((self.radixa + self.radixb)/2)*self.height
    unit = self.unit
    unit_converter(area,unit)
  end
end

puts "Pola kół:"
Circle.new(5,"cm").area
Circle.new(2.25,"cm").area
Circle.new(100,"m").area
Circle.new(1.33,"km").area

puts "Obwody kół:"
Circle.new(5,"cm").perimeter
Circle.new(2.25,"cm").perimeter
Circle.new(100,"m").perimeter
Circle.new(1.33,"km").perimeter

puts "Pola prostokątów:"
Rectangle.new(5,2,"cm").area
Rectangle.new(3.33,4.20,"cm").area
Rectangle.new(124,33,"m").area
Rectangle.new(1.2,2.2,"km").area

puts "Obwody prostokątów:"
Rectangle.new(5,2,"cm").perimeter
Rectangle.new(3.33,4.20,"cm").perimeter
Rectangle.new(124,33,"m").perimeter
Rectangle.new(1.2,2.2,"km").perimeter

puts "Pola kwadratów:"
Square.new(3,"cm").area
Square.new(4.45,"cm").area
Square.new(12,"m").area
Square.new(3.66,"km").area

puts "Obwody kwadratów:"
Square.new(3,"cm").perimeter
Square.new(4.45,"cm").perimeter
Square.new(12,"m").perimeter
Square.new(3.66,"km").perimeter

puts "Pola trapezów:"
Trapezoid.new(2.34,6.66,2,"cm").area
Trapezoid.new(113,33,16,"m").area

puts "Do obliczenia obdwodów podanych trapezów mamy niewystarczającą liczbę danych. ;-)"
