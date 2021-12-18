# frozen_string_literal: true

# Start here sign  upcode
module Sign
  @@array1 = []
  def user_input_method
    @@array1.push(gets.chomp)
  end

  private

  def show
    puts 'open your signup page'
    puts '................'
    puts 'enter name'
    user_input_method
    puts 'enter dob'
    user_input_method
    puts 'enter address'
    user_input_method
    puts 'enter email'
    user_input_method
    puts 'enter email password'
    user_input_method
    puts '.................'
  end

  def signup
    show
    puts 'you want to exit then enter 1 otherwise enter 2'
    @exit_input = gets.chomp.to_i
    CSV.open('myfile1.csv', 'a+') do |csv|
      csv << @@array1
    end
    check
  end

  def check
    case @exit_input
    when 1
      exit
    when 2
      nil
    end
  end
end
