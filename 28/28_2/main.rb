# frozen_string_literal: true

require_relative 'lib/question'
require_relative 'lib/victorina'

victorina = Victorina.from_file("#{__dir__}/data/questions.xml")
result_file = "#{__dir__}/data/results.txt"
puts victorina.greeting
puts victorina.rules
victorina.start
loop do
  current = victorina.next
  puts current
  puts current.variants
  print 'Ваш выбор: '
  user_answer = $stdin.gets.to_i
  puts victorina.get_answer(user_answer)
  next unless victorina.finish?

  puts victorina.score
  puts victorina.last_result(result_file)
  victorina.save_result(result_file)
  print victorina.restart
  user_choice = $stdin.gets.chomp.downcase[0]
  if user_choice == 'y'
    system('clear')
    victorina.start
    redo
  else
    break
  end
end
puts victorina.bye
