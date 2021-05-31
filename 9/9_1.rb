# frozen_string_literal: true

temp = ARGV[0]
season = ARGV[1]

if temp.nil?
  puts 'Какая сейчас температура?'
  temp = $stdin.gets.to_i
end

if season.nil?
  puts 'Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)'
  season = $stdin.gets.to_i
end

if temp.between?(15, 35) && season == 1
  puts 'Скорее идите в парк, соловьи поют!'
elsif temp.between?(22, 30)
  puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end
