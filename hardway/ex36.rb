
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

  prompt; next_move = gets.chomp

  if next_move == "left"
    wolf_room()
  elsif next_move == "right"
    gondor_room()
  else
    gameove('You only hace a few seconds to respond!! Game Over!!')
  end
end

def wolf_room()

  puts "-------------------"
  puts "There is a table and in that table there is a knife."
  puts "In that room there is a wolf too."
  puts "And you have 3 kilos of meat."
  puts "You have to choose between the knife and meat."

  prompt; next_move = gets.chomp

  if next_move == "knife"
    diamond_room()
  elsif next_move == "meat"
    wolf_room()
  else
    gameover('You had to choose something!! Game Over!!')
  end

end

def gondor_room()

  gameover('There is too fire in here!! GAME OVER!!')

end

def diamond_room()
  puts "A lot of Diamonds!! How many you can take?"

  prompt; next_move = gets.chomp

  if next_move.to_i < 10
    gameover('It is not enough, sorry!!')
  elsif next_move.to_i >= 10
    puts "Great!! You win!!"
    Process.exit(0)
  end
end

start()
