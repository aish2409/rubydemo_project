# frozen_string_literal: true

# start here position code
require 'byebug'

module Position
  def position(position_input)
    @count += 1
    temp = position_input - 1
    if @count.modulo(2).zero?
      @array1[temp] = '0' if is_empty?(@array1[temp])
    elsif is_empty?(@array1[temp])
      @array1[temp] = 'x'
    end
  end

  def is_empty?(position)
    !(['0', 'x'].include?(position))
  end
end
