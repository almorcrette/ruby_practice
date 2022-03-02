puts "Hi there! What's your name?"
name = gets.chomp.downcase
name.chr == "s" ? ( puts "#{name.upcase}!!!!!!!!" ) : ( puts "Hi #{name.capitalize}" )