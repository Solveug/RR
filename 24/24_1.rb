# frozen_string_literal: true

user_count = ARGV[0].to_i
if user_count.zero?
  print 'Сколько раз вывести текущее время?: '
  user_count = $stdin.gets.to_i
end

user_count = 10 if user_count.zero?

user_count.times do
  puts Time.now
  sleep 1
end
