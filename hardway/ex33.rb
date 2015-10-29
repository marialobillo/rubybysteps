i = 24
numbers = []
top = 38
increment = 2

while i < top
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + increment
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end
