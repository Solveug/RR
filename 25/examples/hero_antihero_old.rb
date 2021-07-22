# frozen_string_literal: true

#
# Старая версия программы «Герой-антигерой»
#
# (с) goodprogrammer.ru

# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [$stdin, $stdout].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts 'Врага какого персонажа вы хотите узнать?'
hero = $stdin.gets.encode('UTF-8').chomp

case hero
when 'Бэтмен', 'Batman', 'бэтмен', 'batman'
  puts 'Джокер!'
when 'Шерлок Холмс', 'шерлок холмс'
  puts 'Профессор Мориарти'
when 'Буратино', 'буратино'
  puts 'Карабас-Барабас'
when 'Фродо Бэггинс', 'фродо бэггинс'
  puts 'Саурон'
when 'Моцарт', 'моцарт'
  puts 'Сальери'
else
  puts 'Не удалось найти врага'
end
