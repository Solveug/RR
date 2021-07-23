# frozen_string_literal: true

require_relative 'parent'
require_relative 'child'

parent1 = Parent.new 'Иван Васильевич'
child1 = Child.new 'Маша'
child2 = Child.new 'Петя'

puts "#{parent1.name} послушный: #{parent1.obedience}"
puts "#{child1.name} послушная: #{child1.obedience}"
puts "#{child2.name} послушный: #{child2.obedience}"
