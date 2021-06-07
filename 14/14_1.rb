# frozen_string_literal: true

puts 'Врага какого персонажа вы хотите узнать?'
hero = gets.chomp.downcase

case hero
when 'buratino', 'pinocchio', 'буратино', 'пиноккио'
  puts 'Карабас Барабас'
when 'sherloc holmes', 'шерлок холмс'
  puts 'Проф. Мориарти'
when 'бэтмен', 'batman'
  puts 'Джокер, Бэйн'
when 'гарри поттер', 'harry potter'
  'Волан-де-Морт'
end
