while true do
    my_roll1 = rand(6) + 1
    my_roll2 = rand(6) + 1
    opponent_roll1 = rand(6) + 1
    opponent_roll2 = rand(6) + 1
    
    my_result = my_roll1 + my_roll2
    opponent_result = opponent_roll1 + opponent_roll2
    
    puts "I rolled " + my_result.to_s
    puts "My opponent rolled " + opponent_result.to_s
    
    if my_result != opponent_result
        break
    end
    
    puts "No winner. Play another round!"
end

if my_result > opponent_result
    puts "I win!"
    return true
else
    puts "Opponent wins :-("
    return false
end

