# Welcome message
puts "Welcome to this mini text adventure!"
# Set status to alive
status = "alive"
# Set counter to 0
turn = 0
# initiate loop
while true
  
  # provide instructions
  puts "Would you like to move forward, left or right?"
  
  # Get input
  instruction = gets.chomp
  
  # If left or right, put messaging saying you die and set status to dead
  if instruction == "left"
    puts "You were eaten by a werewolf!"
    status = "dead"
  elsif instruction == "right"
    puts "You were killed by a goblin!"
    status = "dead"

  # if forward, put message stating moved forward and still alive, add one to counter
  elsif instruction == "forward"
    puts "You moved forward and are still alive."
    turn = turn + 1

  # else say, not the right input, try again
  else
    puts "You can only move forward, left or right."
  
  end

  # create a break when counter gets to two with message saying you've won
  if status == "dead"
    puts "You are dead. End of the game."
    break
  end
  
  if turn == 2
    puts "You made it out of the dungeon alive. You win!"
    break
  end
  
end