# frozen_string_literal: true

require 'byebug'

# start here position code
module Position
  def position(position_input)
    @count += 1
    temp = position_input - 1
    if @count.modulo(2).zero?
      @array1[temp] = '0' if position_empty?(@array1[temp])
    elsif position_empty?(@array1[temp])
      @array1[temp] = 'x'
    end
  end

  def position_empty?(position)
    !%w[0 x].include?(position)
  end
end
