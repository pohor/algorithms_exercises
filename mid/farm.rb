# Zdefiniuj klasy Dog , Cat , Duck , Goose , każda z tych klas powinna dziedziczyć po klasie Animal , która posiada pustą metodę give_sound . Dla każdej z klas nadpisz metodę bazową give_sound , odpowiednio dla dźwięku poszczególnych zwierząt, przykłądowo dla psa wypisz 'woof! woof!' . Zdefiniuj klase Farm , która przyjmuje w metodzie 'initialize' tablicę obiektów Animals . Stwórz w klasie Farm metodę give_sounds , która wywołuje give_sound dla każdego obiektu z tablicy.

class Animal
  def give_sound
  end
end

class Farm
  attr_accessor :animal_list
  def initialize(animal_list)
    self.animal_list = animal_list
  end
  def give_sounds
    animal_list.each { |species| species.give_sound }
  end
end

class Dog < Animal
  def give_sound
    puts "Woof, woof!"
  end
end

class Cat < Animal
  def give_sound
    puts "Meow, meow!"
  end
end

class Duck < Animal
  def give_sound
    puts "Quack, quack!"
  end
end

class Goose < Animal
  def give_sound
    puts "Honk, honk!"
  end
end

animal_list = [Dog.new, Cat.new, Duck.new, Goose.new]
farm = Farm.new(animal_list)
farm.give_sounds
