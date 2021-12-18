# frozen_string_literal: true

require 'rubocop'
require './name'
require './age'
require './email'
require './phone'

# start here Menu code
class Menu
  include Name
  include Age
  include Email
  include Phone
  def menu
    puts 'please enter choose any option'
    puts '....................'
    puts 'if want search by name then enter 1'
    puts '.....................'
    puts 'if want search by age then enter 2'
    choose_method
  end

  def choose_method
    puts '.....................'
    puts 'if want search by mobile number then enter 3'
    puts '......................'
    puts 'if want search by email address then enter 4'
    puts '............'
    puts 'if you want exit then enter 5 '
  end

  def show_method
    loop do
      menu
      @user_input = gets.chomp.to_i
      case @user_input
      when 1
        name_by_search_method
      when 2
        age_by_search_method
      when 3
        phone_by_search_method
      when 4
        email_by_search_method
      when 5
        exit
      end
    end
  end
end

menu_object1 = Menu.new
menu_object1.show_method
