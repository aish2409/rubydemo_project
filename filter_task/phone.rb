# frozen_string_literal: true

# start here Phone code
module Phone
  def phone_by_search_method
    puts 'enter your phone number'
    call_method
    @length_object.times do |i|
      next unless @input_object1[i].at(4).eql?(@user_input)

      (0..5).each do |j|
        puts @input_object1[i][j]
      end
      print "\n"
    end
  end
end
# name_object =Phone.new
# name_object.phone_by_search_method
