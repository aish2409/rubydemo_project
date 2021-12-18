# frozen_string_literal: true

# start here age search code
module Age
  def age_by_search_method
    puts 'enter your age'
    call_method
    @length_object.times do |i|
      next unless @input_object1[i].at(2).eql?(@user_input)

      (0..5).each do |j|
        puts @input_object1[i][j]
      end
      print "\n"
    end
  end
end
