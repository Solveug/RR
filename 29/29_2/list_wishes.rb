# frozen_string_literal: true

require 'rexml/document'
require 'date'
require_relative 'lib/wish'

file_path = "#{File.dirname(__FILE__)}/data/chest.xml"

abort "Файл #{file_path} не найден" unless File.exist?(file_path)

doc = File.open(file_path, 'r:UTF-8') do |file|
  REXML::Document.new(file)
end

wishes = []
doc.elements.each('wishes/wish') do |wish_node|
  wishes << Wish.new(wish_node)
end

puts
puts 'Эти желания должны были сбыться к сегодняшнему дню'
wishes.each { |wish| puts wish if wish.overdue? }

puts
puts 'А этим желаниям ещё предстоит сбыться'
wishes.each { |wish| puts wish unless wish.overdue? }
