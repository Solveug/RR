# frozen_string_literal: true

def mix_char(word)
  word.split('').shuffle.join
end

print 'Введите слово: '
user_input = gets.strip.downcase
puts mix_char(user_input).to_s
