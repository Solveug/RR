# frozen_string_literal: true

file_name = ARGV[0]

if file_name.nil?
  puts 'Не указан путь к файлу. Введите путь к файлу и Ввод'
  file_name = gets.chomp
end

if File.exist?(file_name)
  file = File.open("#{__dir__}/#{file_name}")
  strings = file.readlines(chomp: true)
  file.close
  empty = strings.count { |empt| empt == '' }
  puts "Открыли файл: #{file_name}"
  puts "Всего строк: #{strings.size}"
  puts "Пустых строк: #{empty}"
  puts 'Последние 5 строк файла: '
  puts strings.last 5
else
  puts 'Файл не существует или указан неверный путь к файлу.'
end
