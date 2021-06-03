# frozen_string_literal: true

def body_mass_index(height, weight)
  weight / (height / 100)**2
end

def info_bmi(bmi)
  return_string = "Ваш индекс #{bmi.round(2)}\n"

  return_string << if bmi.between?(0, 16)
                     'Выраженный дефицит массы тела'
                   elsif bmi.between?(16, 18.5)
                     'Недостаточная (дефицит) масса тела'
                   elsif bmi.between?(18.5, 24.99)
                     'Норма'
                   elsif bmi.between?(25, 30)
                     'Избыточная масса тела (предожирение)'
                   elsif bmi.between?(30, 35)
                     'Ожирение'
                   elsif bmi.between?(35, 40)
                     'Ожирение резкое'
                   else
                     'Очень резкое ожирение'
                   end
  return_string
end

puts 'Введите ваш вес (в кг.): '
user_weight = gets.chomp.to_f
# В примере - Введите ваш рост (в м.): 198.
# Запрашивается рост в метрах, а вводится в сантиметрах
puts 'Введите ваш рост (в см.): '
user_height = gets.chomp.to_f
bmi = body_mass_index(user_height, user_weight)
puts info_bmi(bmi)
