require './board.rb'
require './ships.rb'

class Game
attr_accessor :board
  def initialize(board)
    self.board = board
  end


  def take_coordinates_from_usr
    loop do
      usr = gets.chomp.to_s
      if board.coordinates_hash.has_key?(usr) == true
      return usr
      break
      else
        puts "Podaj poprawne koordynaty."
      end
    end
  end

  def check_if_hit?(usr)
    output = []
    hit_coordinates = board.coordinates_hash[usr]
    output << hit_coordinates
    output << board.ships.find { |ship| ship.coordinates.include?(hit_coordinates) || ship.coordinates == hit_coordinates }
  end

  def take_damage(hit)
    ship = hit[1]
    hit_coordinates = hit[0]
    ship.hit_count +=1
    if ship.hit_count == ship.length
      puts "Trafiony zatopiony!"
      ship.status = :sunk
      ship.protected_field.delete(hit_coordinates)
      ship.protected_field.each do |coordinate|
        board.game_board[coordinate[0]][coordinate[1]] = "."
      end
        board.game_board[hit_coordinates[0]][hit_coordinates[1]] = "X"
    else puts "Trafiony!"
        ship.protected_field.delete(hit_coordinates)
        board.game_board[hit_coordinates[0]][hit_coordinates[1]] = "X"
    end
  end

  def missed(hit)
    hit_coordinates = hit[0]
    puts "Pudło!"
    board.game_board[hit_coordinates[0]][hit_coordinates[1]] = "."
  end

  def any_sailing?
    board.ships.any? { |ship| ship.status == :sailing }
  end

  def start_game
    # board.show_ships_positions #for testing only
    puts "Oto plansza:"
    board.show_game_board
    puts "Zaczynamy!"
    # puts board.ships.each { |ship| p ship.coordinates } #for testing only
    # puts board.ships.each { |ship| p ship.protected_field } #for testing only

    while any_sailing? == true
      puts "Podaj koordynaty Twojego strzału:"
      hit = check_if_hit?(take_coordinates_from_usr)
        if hit[1] != nil
          take_damage(hit)
        else
          missed(hit)
        end
        board.show_game_board
      break if any_sailing? == false
    end
    puts "Brawo! Wszystkie statki zatopione!"
  end
end

ships = [smallship = SmallShip.new,smallship2 = SmallShip.new,smallship3 = SmallShip.new,smallship4 = SmallShip.new,mediumship = MediumShip.new,mediumship2 = MediumShip.new,mediumship3 = MediumShip.new,largeship1 = LargeShip.new,largeship2 = LargeShip.new,biggestship = BiggestShip.new]
puts 'initializing...'
board = GameBoard.new
board.prepare_game(ships)
game = Game.new(board)
game.start_game
