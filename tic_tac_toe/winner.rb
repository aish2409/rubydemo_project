# frozen_string_literal: true

require './check_module'

# start here winner code
class Winner
  include Check
  def winner
    if player2_winner?
      puts 'player 2 is winner'
      exit
    elsif player1_winner?
      puts 'player 1 is winner'
      exit
    end
  end
end
