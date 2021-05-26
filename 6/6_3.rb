cars = %w[Toyota, Mercedes-Benz, BMW, Honda, Volkswagen, Ford, Hyundai, Audi, Porsche]
puts "У нас есть #{cars.length} машин, какую выберите?"
user_choice = gets.to_i
# if (0..cars.length).include?(user_choice)
if user_choice >=1 && user_choice <= cars.length
  puts "Вы получаете #{cars[user_choice - 1]}"
else
  puts "У нас нет машины с таким номером"
end
