# чтобы не собирать каждый раз руками рейтинг, парсер

require 'open-uri'
require 'nokogiri'

url = 'https://tiobe.com/tiobe-index/'
html = URI.open(url)

doc = Nokogiri::HTML(html)
table = doc.css('table#top20.table.table-striped.table-top20 td')
data = table.each_slice(7).to_a

data.each do |el|
  puts "language: #{el[4].children.text}, raiting: #{el[5].children.text}, change: #{el[6].children.text}"
  p '---------'
end
