# Решение из задачи 18_3
# puts 'Введите строку с хэштегами: '
# user_input = $stdin.gets.chomp
# word = []
# user_input.scan(/#[[:word:]]+/) { |match| word << match }
# puts "Нашли вот такие хэштеги: #{word.join(', ')}"

def hashtags(string)
  string.scan(/#[[:word:]-]+/)
end
