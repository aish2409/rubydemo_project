# frozen_string_literal: true

require './tik_module'
require './position_module'
require './check_module'

class Game < Winner
  include Position
  def menu
    @array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    show

    take_input
  end

  private

  def show
    puts 'tic toe game'
    puts '...........'
    puts 'player 1 (x)'
    puts 'player 2 (0)'
    puts "#{@array1[0]} | #{@array1[1]} | #{@array1[2]}"
    puts "#{@array1[3]} | #{@array1[4]} | #{@array1[5]}"
    puts "#{@array1[6]} | #{@array1[7]} | #{@array1[8]}"
  end

  def take_input
    (0..9).each do |i|
      if i < 9 ? result : draw
    end
  end

  def result
    puts 'please enter number of position between 1 to 9'
    puts 'if you want go exit then enter 10'
    position_input = gets.chomp.to_i
    case position_input
    when 1, 2, 3, 4, 5, 6, 7, 8, 9
      position(position_input)
      show
      winner
    when 10
      exit
    else
      puts 'invalid input please enter only number between 1 to 9'
    end
  end

  def draw
    puts 'match is draw'
    exit
  end

end

game_object1 = Game.new
game_object1.menu
