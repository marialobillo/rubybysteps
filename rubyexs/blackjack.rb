
ar = [10,5,5,1]

def twenty_one *cards
  cards.reduce(:+) <= 21
end

if twenty_one(10,5,5,1)
  puts "Son 21!"
else
  puts "No son 21! Yeah"
end
