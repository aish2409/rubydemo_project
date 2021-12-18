# frozen_string_literal: true

require 'csv'

# start here name search code
module Name
  def call_method
    @user_input = gets.chomp
    @input_object1 = CSV.read('filter_fake.csv')
    @length_object = @input_object1.length
  end

  def name_by_search_method
    puts 'enter your name'
    call_method
    @length_object.times do |i|
      next unless @input_object1[i].at(0).eql?(@user_input)

      (1...5).each do |j|
        puts @input_object1[i][j]
      end
    end
  end
end
