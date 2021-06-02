def count_letters(word)
  vovels = word.delete('^а, о, э, е, и, ы, у, ё, ю, я').size
  consonants = word.size - vovels
  [vovels, consonants]
end

puts 'Введите слово:'
user_word = gets.strip.downcase
puts "В слове #{user_word} гласных букв #{count_letters(user_word).first}, согласных букв #{count_letters(user_word).last}"
