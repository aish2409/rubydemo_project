# frozen_string_literal: true

# checking condition
module Check
  def player1_winner?
    call_method1_player1?
  end

  def player2_winner?
    call_method1_player2?
  end

  private

  def check_condition(index1, index2, index3, sign_var)
    (@array1[index1].eql?(sign_var) && @array1[index2].eql?(sign_var) &&
     @array1[index3].eql?(sign_var))
  end

  def horizon?(sign)
    check_condition(0, 1, 2, sign) || check_condition(3, 4, 5, sign) || check_condition(6, 7, 8, sign)
  end

  def vertical?(sign)
    check_condition(0, 3, 6, sign) || check_condition(1, 4, 7, sign) || check_condition(2, 5, 8, sign)
  end

  def digonal?(sign)
    check_condition(0, 4, 8, sign) || check_condition(2, 4, 6, sign)
  end

  def call_method1_player1?
    horizon?('x') || vertical?('x') || digonal?('x')
  end

  def call_method1_player2?
    horizon?('0') || vertical?('0') || digonal?('0')
  end
end
