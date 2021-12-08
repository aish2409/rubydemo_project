
def first_triangle
  5.times do |i|
    5.times do |j|
      print '*' if j <= i
    end
    print "\n"
  end
  print "\n"
end

def second_triangle
  5.times do |i|
    5.times do |j|
      print '*' if j >= i
    end
    print "\n"
  end
end

def third_triangle
  5.times do |i|
    5.times do |k|
      print ' ' if k > i
    end
    5.times do |j|
      print '*' if j <= i
    end
    print "\n"
  end
end

first_triangle
second_triangle
third_triangle
