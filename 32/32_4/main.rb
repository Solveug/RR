require_relative 'lib/periodic_table'

p_table = PeriodicTable.from_file("#{__dir__}/data/periodic_table.json")

puts p_table.description
puts p_table.epic_show
print 'Какой элемент посмотрим?: '
input = $stdin.gets.chomp.capitalize
puts p_table.find(input)
