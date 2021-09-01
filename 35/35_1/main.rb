# frozen_string_literal: true

require 'net/http'
require 'rexml/document'

require_relative 'lib/meteoservice_forecast'

URL = 'https://www.meteoservice.ru/export/gismeteo/point/37.xml'

response = Net::HTTP.get_response(URI.parse(URL))
doc = REXML::Document.new(response.body)

city_name = URI.unescape(doc.root.elements['REPORT/TOWN'].attributes['sname'])

forecast_nodes = doc.root.elements['REPORT/TOWN'].elements.to_a

puts city_name
puts

forecast_nodes.each do |node|
  puts MeteoserviceForecast.from_xml(node)
  puts
end
