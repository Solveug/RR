# frozen_string_literal: true

require_relative 'lib/wear'
require_relative 'lib/wardrobe'

wardrobe = Wardrobe.from_dir(__dir__)
line_size = 40
print 'Сколько градусов за окном? (можно с минусом): '
temp = $stdin.gets.to_i
puts '-' * line_size
puts 'Предлагаем сегодня надеть:'
puts '-' * line_size
puts wardrobe.dress(temp)
