# frozen_string_literal: true

require 'digest'

puts 'Введите слово или фразу для шифрования: '
user_input = $stdin.gets.chomp

puts 'Каким способом зашифровать:
1. MD5
2. SHA1'
user_choise = $stdin.gets.to_i

if user_choise == 1
  puts Digest::MD5.hexdigest user_input.to_s
else
  puts Digest::SHA1.hexdigest user_input.to_s
end
