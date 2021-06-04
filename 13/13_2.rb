# frozen_string_literal: true

class Adress
  def initialize(area, district, town, street, building, appartment = '', post_index = '')
    @area = area
    @district = district
    @town = town
    @street = street
    @building = building
    @appartment = appartment
    @post_index = post_index
  end

  def to_s
    "#{@area}, #{@district}, #{@town}, #{@street}, #{@building}, #{@appartment}, #{@post_index}"
  end

  def show_adress
    "Регион: #{@area}\nРайон: #{@district}\nГород: #{@town}\nУлица: #{@street}\nДом: #{@building}\nКвартира: #{@appartment}\nИндекс: #{@post_index}\n\n"
  end
end

adress1 = Adress.new('Москва', 'Троицкий', 'Троицк', 'ул. Гагарина', '96', '1', '100100')
adress2 = Adress.new('Москва', '', '', 'ул. Мира', '178', '12', '')

puts adress1.show_adress
puts adress2.show_adress
