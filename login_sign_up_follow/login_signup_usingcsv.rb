# frozen_string_literal: true

require 'byebug'
require './sign_up_m'
require './login_page_mod'
require 'csv'

# sign up page code start here

$array1 = []

#Start here login code

class Menu
  def self.menu
    puts 'welcome to user'
    puts '.................'
    puts 'If you want to open sign up page enter 1 '
    puts '.................'
    puts 'If you want to open login up page enter 2 '
    puts '.................'
    puts 'If you want to exit then enter 3'
    puts '.................'
    puts 'please choose any option'
    puts '.................'
  end
end

class Menu
  include Sign
  include Login
  def menuchoice
    loop do
      Menu.menu
      input1 = gets.chomp.to_i
      case input1
      when 1
        signup
      when 2
        login
      when 3
        exit
      else
        puts 'invalid input'
      end
    end
  end
end
menu_object = Menu.new
menu_object.menuchoice

