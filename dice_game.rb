my_counter = 0
opponent_counter = 0

while true do
    my_roll1 = rand(6) + 1
    my_roll2 = rand(6) + 1
    opponent_roll1 = rand(6) + 1
    opponent_roll2 = rand(6) + 1
    
    my_result = my_roll1 + my_roll2
    opponent_result = opponent_roll1 + opponent_roll2
    
    puts "I rolled " + my_result.to_s
    puts "My opponent rolled " + opponent_result.to_s
    
    if my_result == opponent_result
        puts "No winner this round."
    elsif my_result > opponent_result
        puts "I win this round!"
        my_counter = my_counter + 1
    else
        puts "Opponent wins this round..."
        opponent_counter = opponent_counter + 1
    end
    
    if my_counter == 2 || opponent_counter == 2
        break
    end
    
end

if my_counter == 2
    puts "I win!"
    return true
else
    puts "Opponent wins :-("
    return false
end

