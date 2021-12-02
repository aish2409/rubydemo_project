# frozen_string_literal: true

require 'rubocop'

def calculater_show
  puts 'if you want to sum number then enter 1'
  puts '........................................'
  puts 'if you want to subtract number then enter 2'
  puts '........................................'
  puts 'if you want to multiply number then enter 3'
  puts '........................................'
  puts 'if you want to divide number then enter 4'
  puts '........................................'
  puts 'if you want to square number then enter 5'
  puts '........................................'
  puts 'if you want to cube number then enter 6'
  puts '........................................'
  puts 'if you want to exit number then enter 7'
  puts '........................................'
  puts 'please choose any operation '
end

def sum(input1, input2)
  input1 + input2
end

def sub(input1, input2)
  input1 - input2
end

def multi(input1, input2)
  input1 * input2
end

def divide(input1, input2)
  input1 / input2.to_f
end

def square(input1)
  input1**2
end

def cube(input1)
  input1**3
end

loop do
  calculater_show
  a = gets.chomp.to_i
  case a
  when 1
    puts 'Enter any two integer'
    input1 = gets.chomp.to_i
    input2 = gets.chomp.to_i
    puts "sum number result= #{sum(input1, input2)}"
  when 2
    puts 'Enter any two integer'
    input1 = gets.chomp.to_i
    input2 = gets.chomp.to_i
    puts "subtract number is result= #{sub(input1, input2)}"
  when 3
    puts 'Enter any two integer'
    input1 = gets.chomp.to_i
    input2 = gets.chomp.to_i
    puts "Multiple number is result= #{multi(input1, input2)}"
  when 4
    puts 'Enter any two integer'
    input1 = gets.chomp.to_i
    input2 = gets.chomp.to_i
    puts "Divide number is result= #{divide(input1, input2)}"
  when 5
    puts 'Enter any one integer'
    input1 = gets.chomp.to_i
    puts "Square number is result= #{square(input1)}"
  when 6
    puts 'Enter any one integer'
    input1 = gets.chomp.to_i
    puts "Cube number is result= #{cube(input1)}"
  when 7
    break
  else
    puts 'invaild input please enter correct input'
    puts '.....................................'
  end
end
