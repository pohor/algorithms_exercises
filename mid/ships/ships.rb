class Ship
attr_accessor :length, :orientation, :coordinates, :protected_field, :status, :hit_count
  def initialize
    self.length = 0
    self.orientation = :none
    self.coordinates = []
    self.protected_field = []
    self.status = :sailing
    self.hit_count = 0
  end

  def choose_orientation
    if length == 1
      self.orientation = :none
    elsif length > 1
      self.orientation = [:horizontal, :vertical].sample
    end
  end

  def choose_coordinates
    choose_orientation
    if orientation == :none && length == 1
      y = rand(1..10)
      x = rand(1..10)
    elsif orientation == :horizontal && length == 2
      y = rand(1..9)
      x = rand(1..10)
    elsif orientation == :vertical && length == 2
      y = rand(1..10)
      x = rand(1..9)
    elsif orientation == :horizontal && length == 3
      y = rand(1..8)
      x = rand(1..10)
    elsif orientation == :vertical && length == 3
      y = rand(1..10)
      x = rand(1..8)
    elsif orientation == :horizontal && length == 4
      y = rand(1..7)
      x = rand(1..10)
    elsif orientation == :vertical && length == 4
      y = rand(1..10)
      x = rand(1..7)
    end
    [x,y]
  end

  def check_if_occupied?(board)
    if board.occupied_fields.length == 0
      result = [false]
    else
      if length == 1
        result = []
        board.occupied_fields.each do |coordinate|
          result << (coordinate == coordinates)
        end
      else
        result = []
        board.occupied_fields.each do |board_coordinate|
          coordinates.each do |coordinate|
            result << (board_coordinate == coordinate)
          end
        end
      end
    end
    result.flatten
  end

  def place_ship(board)
    if length == 1
      small_ship_take_coordinates
      loop do
        if check_if_occupied?(board).include?(true)
          small_ship_take_coordinates
        else
          board.occupied_fields << coordinates
          protected_field.each { |coordinate| board.occupied_fields << coordinate }
          break
        end
      end
      board.ships << self

    elsif length == 2
      medium_ship_take_coordinates
      loop do
        if check_if_occupied?(board).include?(true)
          medium_ship_take_coordinates
        else
          coordinates.each { |coordinate| board.occupied_fields << coordinate }
          protected_field.each { |coordinate| board.occupied_fields << coordinate }
          break
        end
      end
      board.ships << self

    elsif length == 3
      large_ship_take_coordinates
      loop do
        if check_if_occupied?(board).include?(true)
          large_ship_take_coordinates
        else
          coordinates.each { |coordinate| board.occupied_fields << coordinate }
          protected_field.each { |coordinate| board.occupied_fields << coordinate }
          break
        end
      end
      board.ships << self

    elsif length == 4
      biggest_ship_take_coordinates
      loop do
       if check_if_occupied?(board).include?(true)
         biggest_ship_take_coordinates
       else
         coordinates.each { |coordinate| board.occupied_fields << coordinate }
         protected_field.each { |coordinate| board.occupied_fields << coordinate }
         break
       end
      end
      board.ships << self
    end
  end
end

class SmallShip < Ship
  def initialize
    super
    self.length = 1
  end

  def small_ship_take_coordinates
    x_y = choose_coordinates
    x = x_y[0]
    y = x_y[1]
    self.coordinates = [x,y]
    self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1]])
    self.protected_field.inspect
    self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
    self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
    self.protected_field.uniq
  end
end

class MediumShip < Ship
  def initialize
    super
    self.length = 2
  end

  def medium_ship_take_coordinates
    x_y = choose_coordinates
    if orientation == :horizontal
      x = x_y[0]
      y = x_y[1]
      y2 = y+1
      self.coordinates = [[x,y],[x, y2]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x+1,y2], [x,y2+1], [x+1,y2+1], [x-1,y2], [x,y2-1], [x-1,y2-1], [x+1,y2-1], [x-1,y2+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    elsif orientation == :vertical
      x = x_y[0]
      y = x_y[1]
      x2 = x+1
      self.coordinates = [[x,y],[x2, y]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x2+1,y], [x2,y+1], [x2+1,y+1], [x2-1,y], [x2,y-1], [x2-1,y-1], [x2+1,y-1], [x2-1,y+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    end
  end
end


class LargeShip < Ship
  def initialize
    super
    self.length = 3
  end

  def large_ship_take_coordinates
      x_y = choose_coordinates
      if orientation == :horizontal
      x = x_y[0]
      y = x_y[1]
      y2 = y+1
      y3 = y+2
      self.coordinates = [[x,y],[x, y2],[x,y3]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x+1,y2], [x,y2+1], [x+1,y2+1], [x-1,y2], [x,y2-1], [x-1,y2-1], [x+1,y2-1], [x-1,y2+1], [x+1,y3], [x,y3+1], [x+1,y3+1], [x-1,y3], [x,y3-1], [x-1,y3-1], [x+1,y3-1], [x-1,y3+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    elsif orientation == :vertical
      x = x_y[0]
      y = x_y[1]
      x2 = x+1
      x3 = x+2
      self.coordinates = [[x,y],[x2, y],[x3,y]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x2+1,y], [x2,y+1], [x2+1,y+1], [x2-1,y], [x2,y-1], [x2-1,y-1], [x2+1,y-1], [x2-1,y+1], [x3+1,y], [x3,y+1], [x3+1,y+1], [x3-1,y], [x3,y-1], [x3-1,y-1], [x3+1,y-1], [x3-1,y+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    end
  end
end


class BiggestShip < Ship
  def initialize
    super
    self.length = 4
  end

  def biggest_ship_take_coordinates
    x_y = choose_coordinates
    if orientation == :horizontal
      x = x_y[0]
      y = x_y[1]
      y2 = y+1
      y3 = y+2
      y4 = y+3
      self.coordinates = [[x,y],[x, y2],[x,y3],[x,y4]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x+1,y2], [x,y2+1], [x+1,y2+1], [x-1,y2], [x,y2-1], [x-1,y2-1], [x+1,y2-1], [x-1,y2+1], [x+1,y3], [x,y3+1], [x+1,y3+1], [x-1,y3], [x,y3-1], [x-1,y3-1], [x+1,y3-1], [x-1,y3+1], [x+1,y4], [x,y4+1], [x+1,y4+1], [x-1,y4], [x,y4-1], [x-1,y4-1], [x+1,y4-1], [x-1,y4+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    elsif orientation == :vertical
      x = x_y[0]
      y = x_y[1]
      x2 = x+1
      x3 = x+2
      x4 = x+3
      self.coordinates = [[x,y],[x2, y],[x3,y], [x4,y]]
      self.protected_field = ([[x+1,y], [x,y+1], [x+1,y+1], [x-1,y], [x,y-1], [x-1,y-1], [x+1,y-1], [x-1,y+1], [x2+1,y], [x2,y+1], [x2+1,y+1], [x2-1,y], [x2,y-1], [x2-1,y-1], [x2+1,y-1], [x2-1,y+1], [x3+1,y], [x3,y+1], [x3+1,y+1], [x3-1,y], [x3,y-1], [x3-1,y-1], [x3+1,y-1], [x3-1,y+1], [x4+1,y], [x4,y+1], [x4+1,y+1], [x4-1,y], [x4,y-1], [x4-1,y-1], [x4+1,y-1], [x4-1,y+1]])
      self.protected_field.delete_if { |coordinate| coordinate[0] < 1 || coordinate[0] > 10 }
      self.protected_field.delete_if { |coordinate| coordinate[1] < 1 || coordinate[1] > 10 }
      self.protected_field.uniq
    end
  end
end
