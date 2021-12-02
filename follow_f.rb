require 'csv'
def follow_list
  # add_input = gets.chomp
  f1 = CSV.read('myfile1.csv')
  a = f1.length
  a.times do |i|
    puts f1[i][0]
  end
end
def follow
  puts 'enter follow name'
  add_input = gets.chomp
end
follow
