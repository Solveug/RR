# frozen_string_literal: true

1.upto(100) do |n|
  result =
    if (n % 15).zero?
      'тыры-пыры'
    elsif (n % 3).zero?
      'тыры'
    elsif (n % 5).zero?
      'пыры'
    else
      n
    end
  puts result
end
