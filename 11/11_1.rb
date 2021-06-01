# frozen_string_literal: true

def circle_area(radius)
  Math::PI * (radius * radius)
end

print 'Введите радиус круга: '
radius1 = gets.to_f
puts "Площать первого круга: #{circle_area(radius1)} "

print 'Введите радиус второго круга: '
radius2 = gets.to_f
puts "Площать второго круга: #{circle_area(radius2)} "
