# frozen_string_literal: true

file_list = Dir["#{__dir__}/*.txt"]
array = []
uniq = []
file_list.each do |file|
  lines = File.readlines(file, chomp: true)
  array << [lines[0], file]
  uniq << lines[0]
end
uniq.uniq!

uniq.each do |file|
  b = array.select { |elm| elm[0] == file }
  File.delete(b[1][1]) if b.size > 1
end
pp array.sort
