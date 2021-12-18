# frozen_string_literal: true

require './login'

# Start here login code
module Login
  include Sign

  private

  def user_input_method_sign_up
    puts '..............'
    puts 'welcome to login page'
    puts '..............'
    puts 'please enter email id and email password'
    puts '..............'
    @i1 = gets.chomp
    @i2 = gets.chomp
  end

  def login
    user_input_method_sign_up
    @f1 = CSV.read('myfile1.csv')
    @length_input = @f1.length
    result
  end

  def result
    @length_input.times do |i|
      if @f1[i].at(3) == @i1 && @f1[i].at(4) == @i2
        puts 'successful login page'
        break
      elsif @length_input == (i + 1)
        puts "please enter correct input if you don't have account so
        please create new account"
        break
      end
    end
  end
end
