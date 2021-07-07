# frozen_string_literal: true

print 'How many dice?: '
number = gets.to_i
total = 0

number.times do
  10.times do
    print "#{rand(7)}\r"
    sleep 0.1
  end
  rand = rand(1..6)
  puts rand
  total += rand
end

puts "Sum of dice: #{total}"
