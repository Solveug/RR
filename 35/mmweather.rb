# frozen_string_literal: true

require 'net/http'
require 'uri'
require 'rexml/document'

CLOUDINESS = { 0 => 'Ясно', 1 => 'Малооблачно', 2 => 'Облачно', 3 => 'Пасмурно' }.freeze

uri = URI.parse('https://xml.meteoservice.ru/export/gismeteo/point/37.xml')

response = Net::HTTP.get_response(uri)
doc = REXML::Document.new(response.body)

city_name = URI.decode_www_form_component(doc.root.elements['REPORT/TOWN'].attributes['sname'])
current_forecast = doc.root.elements['REPORT/TOWN/FORECAST']
min_temp = current_forecast.elements['TEMPERATURE'].attributes['min']
max_temp = current_forecast.elements['TEMPERATURE'].attributes['max']
max_wind = current_forecast.elements['WIND'].attributes['max']
clouds_index = current_forecast.elements['PHENOMENA'].attributes['cloudiness'].to_i
clouds = CLOUDINESS[clouds_index]

puts city_name
puts "Температура от #{min_temp} до #{max_temp}"
puts "Ветер до #{max_wind} м/с"
puts clouds
