puts "What's your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
age_plus_ten = age.to_i + 10
puts "Hi #{name}. Your age plus ten years is #{age_plus_ten.to_s}."