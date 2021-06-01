# frozen_string_literal: true

def last_name_and_initials(last_name, f_name, patronymic)
  "#{last_name} #{f_name[0]}.#{patronymic[0]}."
end

puts 'Введите фамилию:'
user_last_name = gets.chomp.capitalize

puts 'Введите имя:'
user_name = gets.chomp.capitalize

puts 'Введите отчество:'
user_patronymic = gets.chomp.capitalize

puts "Ваше ФИО сокращенно: #{last_name_and_initials(user_last_name, user_name, user_patronymic)}"
