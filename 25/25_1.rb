# frozen_string_literal: true

ticket = {
  "Билет №": 'РМ2010398 050298',
  "Маршрут": 'Москва — Петушки',
  "Пассажир": 'Венедикт В. Ерофеев',
  "Паспорт": '45 99 505281'
}

ticket.each { |k, v| puts "#{k}: #{v}" }
