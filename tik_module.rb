module Check
  def player2_winner?
    ($array1[0].eql?('0') && $array1[1].eql?('0') && $array1[2].eql?('0')) ||
    ($array1[3].eql?('0') && $array1[4].eql?('0') && $array1[5].eql?('0')) ||
    ($array1[6].eql?('0') && $array1[7].eql?('0') && $array1[8].eql?('0')) ||
    ($array1[0].eql?('0') && $array1[3].eql?('0') && $array1[6].eql?('0')) ||
    ($array1[1].eql?('0') && $array1[4].eql?('0') && $array1[7].eql?('0')) ||
    ($array1[2].eql?('0') && $array1[5].eql?('0') && $array1[8].eql?('0')) ||
    ($array1[0].eql?('0') && $array1[4].eql?('0') && $array1[8].eql?('0')) ||
    ($array1[2].eql?('0') && $array1[4].eql?('0') && $array1[6].eql?('0'))
  end

  def player1_winner?
    ($array1[0].eql?('x') && $array1[1].eql?('x') && $array1[2].eql?('x')) ||
    ($array1[3].eql?('x') && $array1[4].eql?('x') && $array1[5].eql?('x')) ||
    ($array1[6].eql?('x') && $array1[7].eql?('x') && $array1[8].eql?('x')) ||
    ($array1[0].eql?('x') && $array1[3].eql?('x') && $array1[6].eql?('x')) ||
    ($array1[1].eql?('x') && $array1[4].eql?('x') && $array1[7].eql?('x')) ||
    ($array1[2].eql?('x') && $array1[5].eql?('x') && $array1[8].eql?('x')) ||
    ($array1[0].eql?('x') && $array1[4].eql?('x') && $array1[8].eql?('x')) ||
    ($array1[2].eql?('x') && $array1[4].eql?('x') && $array1[6].eql?('x'))
  end
end

class Winner
  include Check
  def winner
    # binding.pry
    if player2_winner?
      puts 'player 2 0 is winner'
      exit
    elsif player1_winner?
      puts 'player 1 x is winner'
      exit
    end
  end
end
