# frozen_string_literal: true

forehead = File.readlines("#{__dir__}/data/forehead.txt", chomp: true)
eye = File.readlines("#{__dir__}/data/eye.txt", chomp: true)
nose = File.readlines("#{__dir__}/data/nose.txt", chomp: true)
mouth = File.readlines("#{__dir__}/data/mouth.txt", chomp: true)
puts forehead.sample
puts eye.sample
puts nose.sample
puts mouth.sample
