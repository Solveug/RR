# frozen_string_literal: true

require 'date'

class Patient
  attr_accessor :adress
  attr_reader :name

  def initialize(name, patronymic_name, family_name, date_of_birth)
    @name = name
    @patronymic_name = patronymic_name
    @family_name = family_name
    @date_of_birth = Date.parse(date_of_birth)
  end

  def full_name
    "#{@family_name} #{@name[0]}.#{@patronymic_name[0]}."
  end

  def age
    today = Date.today
    result = today.year - @date_of_birth.year - 1

    if (today.month > @date_of_birth.month) ||
       (today.month == @date_of_birth.month &&
        today.day >= @date_of_birth.day)
      result += 1
    end

    result
  end

  def adult?
    age >= 18
  end
end

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

vadik = Patient.new('Вадим', 'Аркадьевич', 'Венедиктов', '14.09.1984')

puts 'Пациент 1:'
puts vadik.full_name
puts "Возраст: #{vadik.age}"
puts "Совершеннолетний: #{vadik.adult?}"
puts

vadik.adress = Adress.new('Московская область', 'СЗАО', 'Москва', 'ул. Мира', '178', '12', '120130')

puts vadik.adress
puts vadik.adress.show_adress
