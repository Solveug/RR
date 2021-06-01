# frozen_string_literal: true

def sklonyator(number, first, second, third)
  if (11..14).include?(number % 100)
    third
  elsif number % 10 == 1
    first
  elsif (2..4).include?(number % 10)
    second
  else
    third
  end
end
arr = [*0..120]
arr.each do |el|
  puts "#{el} - #{sklonyator(el, 'енот', 'енота', 'енотов')}"
end
