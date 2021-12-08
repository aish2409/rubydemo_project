# frozen_string_literal: true

require 'rubocop'
require 'byebug'

def print_fun
  num = 1
  while num <= 1000
    digits = num.digits
    puts num if num.modulo(3).zero? && (digits.first != 3) && (digits.sum < 20)
    num += 1
  end
end
print_fun
