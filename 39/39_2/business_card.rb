# frozen_string_literal: true

business_card_path = "#{File.dirname(__FILE__)}/business_card.html"

abort "Не удалось найти шаблон #{business_card_path}" unless File.exist?(business_card_path)

business_card = File.read(business_card_path, encoding: 'UTF-8')

puts 'Программа создаст визитку на основе ваших данных.'
puts

answers = {}

puts
puts 'Введите имя и фамилию:'
answers[:name] = gets.chomp

puts
puts 'Введите должность:'
answers[:post] = gets.chomp

puts
puts 'Введите url фотографии:'
answers[:image_url] = gets.chomp

puts
puts 'Введите телефон:'
answers[:phone] = gets.chomp

puts
puts 'Введите email:'
answers[:email] = gets.chomp

answers.each do |field_name, user_input|
  business_card.gsub!("%{#{field_name}}", user_input)
end

business_card_save = "#{Time.now.strftime('%Y-%m-%d_%H-%M')}.html"

File.open(business_card_save, 'w:UTF-8') { |file| file.write business_card }
puts
puts "Ваша визитка сохранена в файл #{business_card_save}"
