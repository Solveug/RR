# frozen_string_literal: true

class Chameleon
  attr_reader :color

  def initialize
    @color = 'прозрачный'
    puts "Сейчас я #{@color}!"
  end

  def change_color(color)
    @color = color
    puts "Теперь я #{@color}!"
  end
end

chameleon1 = Chameleon.new
chameleon1.change_color('синий')
chameleon1.change_color('зеленый')
chameleon1.change_color('голубой')
chameleon1.change_color('красный')
chameleon1.change_color('оранжевый')
chameleon1.change_color('серо-буро-малиновый в крапинку')
