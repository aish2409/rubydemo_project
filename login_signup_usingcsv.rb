# frozen_string_literal: true

require 'byebug'
require 'csv'
# sign up page code start here
$array1 = []
def signup
  puts 'open your signup page'
  puts '................'
  puts 'enter name'
  $array1.push(gets.chomp)
  puts 'enter dob'
  $array1.push(gets.chomp)
  puts 'enter address'
  $array1.push(gets.chomp)
  puts 'enter email'
  $array1.push(gets.chomp)
  puts 'enter email password'
  $array1.push(gets.chomp)
  puts '.................'
  puts 'you want to exit then enter 1 otherwise enter 2'
  exit_input = gets.chomp.to_i
  CSV.open('myfile1.csv', 'a+') do |csv|
    csv << $array1
  end
  case exit_input
    when 1
      exit
    when 2
      return
  end
end

def login
  puts '..............'
  puts 'welcome to login page'
  puts '..............'
  puts 'please enter email id and email password'
  puts '..............'
  i1 = gets.chomp
  i2 = gets.chomp
  f1 = CSV.read('myfile1.csv')
  a = f1.length
  a.times do |i|
    # byebug
    if f1[i].at(3) == i1 && f1[i].at(4) == i2
      puts 'successful login page'
      puts '.....................'
      break
    elsif a == (i + 1)
      puts "please enter correct input if you don't have account so please create
      new account"
      puts '......................'
      break
    end
  end
end

def menu
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
loop do
  menu
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
