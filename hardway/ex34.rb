
animals = ['bear', 'python', 'peacock', 'kangaroo', 'whale', 'platypus']

animals.each_with_index do |animal, index|
  puts "The #{index+1}th is at #{index} and is a #{animal}"
end
