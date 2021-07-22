# frozen_string_literal: true

require 'pony'
require 'io/console'

my_mail = 'boatman@list.rb'

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = $stdin.noecho(&:gets).chomp

puts 'Кому отправить письмо? Введите адрес:'
send_to = $stdin.gets.chomp

puts 'Что написать в письме?'
body = $stdin.gets.encode('UTF-8').chomp

success = false

begin
  # При вызове метода mail мы передаем именно ассоциативный массив. Это очень
  # распространненный и удобный способ передачи именованных параметров в руби.
  Pony.mail(
    subject: 'Привет из программы на руби!',
    body: body,
    to: send_to,
    from: my_mail,
    via: :smtp,
    via_options: {
      address: 'smtp.mail.ru',
      port: '465',
      tls: true,
      user_name: my_mail,
      password: password,
      authentication: :plain
    }
  )

  success = true
rescue SocketError
  puts 'Не могу соединиться с сервером. '
rescue Net::SMTPSyntaxError => e
  puts "Вы некорректно задали параметры письма: #{e.message}"
rescue Net::SMTPAuthenticationError => e
  puts "Неправильный пароль, попробуйте еще: #{e.message}"
ensure
  puts "\nМы постарались отправить письмо."
end

if success
  puts "\nИ письмо отправилось!"
else
  puts "\nНо отправка не удалась :("
end
