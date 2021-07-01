# frozen_string_literal: true

require 'pony'
require 'io/console'

my_mail = '---------'
password = '-----------'

puts 'Кому отправить письмо? Введите адрес:'
send_to = $stdin.gets.chomp

puts 'Введите тему письма:'
subject = $stdin.gets.encode('UTF-8').chomp
puts 'Что написать в письме?'
body = $stdin.gets.encode('UTF-8').chomp

Pony.mail(
  subject: subject,
  body: body,
  to: send_to,
  from: my_mail,

  via: :smtp,
  via_options: {
    address: 'smtp.mail.ru', # это хост, сервер отправки почты
    port: '465', # порт
    tls: true, # если сервер работает в режиме TLS
    user_name: my_mail, # используем наш адрес почты как логин
    password: password, # задаем введенный в консоли пароль
    authentication: :plain # "обычный" тип авторизации по паролю
  }
)

puts 'Письмо отправлено!'
