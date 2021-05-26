array = Array.new(10) { |i| i += 1 }
array1 = []
puts array.to_s
current_index = array.size - 1;
for i in array do
  array1 << array[current_index]
  current_index -= 1
end
puts array1.to_s

array2 = []
current_index = array.size - 1
while current_index >= 0
  array2 << array[current_index]
  current_index -= 1
end
puts array2.to_s

array3 = []
array.each{|i|
  array3.unshift(i)
}
puts array3.to_s

array4 = []
array.each do |i|
  array4.unshift(i)
end
puts array4.to_s
