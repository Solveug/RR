# frozen_string_literal: true

def happy_birthday(person)
  pampam = [
    'Вы не очень сохранились для своих',
    'Могло бы быть и лучше, но куда в ваши',
    'Вам всего',
    'В этот день попа поняла что ее ждут приключения на все'
  ]
  puts "Дорогой #{person[:name]},"
  puts "Поздравляем Вас с #{person[:celebration]}!"
  puts "#{pampam.sample} #{person[:age]}!"
  puts "Желаем успехов в лечении #{person[:diagnosis]}!"
  puts '*' * 50
end

borya = { name: 'Борис', age: rand(1..100), celebration: 'Новым Годом', diagnosis: 'гастрита' }
happy_birthday(borya)

gosha = { name: 'Георгий', age: rand(1..100), celebration: 'Днем граненного стакана', diagnosis: 'алкоголизма' }
happy_birthday(gosha)

kesha = { name: 'Инокентий', age: rand(1..100), celebration: 'Днем хирурга', diagnosis: 'альцгеймера и паркинсона' }
happy_birthday(kesha)

vald = { name: 'Вальдемар', age: rand(1..100), celebration: 'самой длинной ночью (Йоль)', diagnosis: 'энуреза' }
happy_birthday(vald)
