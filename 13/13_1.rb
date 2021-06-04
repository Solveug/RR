# frozen_string_literal: true

class Book
  def initialize(author, title, date)
    @author = author
    @title = title
    @date = date
  end

  def to_s
    "#{@author} #{@title} #{@date}"
  end
end

book1 = Book.new('Д.Родари', 'Чем пахнут ремесла', 1978)
book2 = Book.new('С.Фрай', 'Тенисные мячики небес', 2011)
book3 = Book.new('С.С. Сухинов', 'Война сказок', 1992)
book4 = Book.new('Esenin', 'Sbornik', 2007)
book5 = Book.new('Blok', 'Sobranie sochineniy', 2020)

puts book1, book2, book3, book4, book5
