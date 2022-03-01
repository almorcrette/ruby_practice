while true do
    me = rand(6) + 1
    opponent = rand(6) + 1
    
    puts "I rolled " + me.to_s
    puts "My opponent rolled " + opponent.to_s
    
    if me != opponent
        break
    end
    
    puts "No winner. Play another round!"
end

if me > opponent
    puts "I win!"
    return true
else
    puts "Opponent wins :-("
    return false
end

