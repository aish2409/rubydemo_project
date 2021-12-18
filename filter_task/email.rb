# frozen_string_literal: true

# start here email search code
module Email
  def email_by_search_method
    puts 'enter your email id'
    call_method
    @length_object.times do |i|
      next unless @input_object1[i].at(3).eql?(@user_input)

      (0..5).each do |j|
        puts @input_object1[i][j]
      end
    end
  end
end
