# frozen_string_literal: true

def mix_char(word)
  word.split('').shuffle.join
end

print 'Введите фразу: '
user_input = gets.strip.downcase
puts user_input.split(' ').map { |word| mix_char(word) }.join(' ')
