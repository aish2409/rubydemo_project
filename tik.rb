# frozen_string_literal: true
require 'byebug'
require 'pry'

$array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
$count = 0

def show
  puts "#{$array1[0]} | #{$array1[1]} | #{$array1[2]}"
  puts "#{$array1[3]} | #{$array1[4]} | #{$array1[5]}"
  puts "#{$array1[6]} | #{$array1[7]} | #{$array1[8]}"
end
def position(position_input)
  $count += 1
  temp = position_input - 1
  if $count.modulo(2).zero?
    if $array1[temp] != '0' && $array1[temp] != 'x'
      $array1[position_input - 1] = '0'
    end
  else
    if $array1[temp] != '0' && $array1[temp] != 'x'
      $array1[position_input - 1] = 'x'
    end
  end
  winner
end

def winner
  # binding.pry
  if $array1[0].eql?('0') && $array1[1].eql?('0') && $array1[2].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[0].eql?('x') && $array1[1].eql?('x') && $array1[2].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[3].eql?('0') && $array1[4].eql?('0') && $array1[5].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[3].eql?('x') && $array1[4].eql?('x') && $array1[5].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[6].eql?('0') && $array1[7].eql?('0') && $array1[8].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[6].eql?('x') && $array1[7].eql?('x') && $array1[8].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[0].eql?('0') && $array1[3].eql?('0') && $array1[6].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[0].eql?('x') && $array1[3].eql?('x') && $array1[6].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[1].eql?('0') && $array1[4].eql?('0') && $array1[7].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[1].eql?('x') && $array1[4].eql?('x') && $array1[7].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[2].eql?('0') && $array1[5].eql?('0') && $array1[8].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[2].eql?('x') && $array1[5].eql?('x') && $array1[8].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[0].eql?('0') && $array1[4].eql?('0') && $array1[8].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[0].eql?('x') && $array1[4].eql?('x') && $array1[8].eql?('x')
    puts 'player 1 x is winner'
  elsif $array1[2].eql?('0') && $array1[4].eql?('0') && $array1[6].eql?('0')
    puts 'player 2 0 is winner'
  elsif $array1[2].eql?('x') && $array1[4].eql?('x') && $array1[6].eql?('x')
    puts 'player 1 x is winner'
  end
end
def menu
  puts 'tic toe game'
  puts '...........'
  puts 'player 1 (x)'
  puts 'player 2 (0)'
  show
  loop do
    puts 'please enter number of position between 1 to 9'
    puts 'if you want go exit then enter 10'
    position_input = gets.chomp.to_i
    case position_input
    when 1
      position(position_input)
      show
    when 2
      position(position_input)
      show
    when 3
      position(position_input)
      show
    when 4
      position(position_input)
      show
    when 5
      position(position_input)
      show
    when 6
      position(position_input)
      show
    when 7
      position(position_input)
      show
    when 8
      position(position_input)
      show
    when 9
      position(position_input)
      show
    when 10
      exit
    else
      puts 'invalid input please enter only number between 1 to 9'
    end
  end
end
menu
