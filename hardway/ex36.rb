
def prompt()
  print "> "
end

def gameover(why)
  puts "#{why}. Good Job!"
end

def start()
  puts "Your are in front of a two roads."
  puts "One to your left and other on your right."
  puts "Wich one do you take?"

  prompt; next_move = get.chomp

  if next_move == "left"
    wolf_room()
  elsif next_move == "right"
    gondor_room()
  else
    gameove('You only hace a few seconds to respond!! Game Over!!')
end

def wolf_room()

end

def gondor_room()

end

def ruby_room()

end
