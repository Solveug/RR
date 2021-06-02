# frozen_string_literal: true

def count_vowels(word)
  word.delete('^а, о, э, е, и, ы, у, ё, ю, я').size
end

puts 'Введите слово:'
user_word = gets.strip.downcase
puts "В слове #{user_word} гласных букв #{count_vowels(user_word)}"
