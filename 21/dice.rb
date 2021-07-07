print "How many dice?: "
number = gets.to_i
number.times do
  10.times do
    print "#{rand(7)}\r"
    sleep 0.1
  end
  puts rand(6) + 1
end
