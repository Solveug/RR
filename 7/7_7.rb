crypto_str = ""
while crypto_str.length <= 8
  massiv = [('a'..'z').to_a.sample, ('A'..'Z').to_a.sample, rand(0..9)]
  crypto_str += massiv.sample.to_s
end
puts crypto_str

# второй вариант решения
massiv = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
8.times {  print massiv.sample }
