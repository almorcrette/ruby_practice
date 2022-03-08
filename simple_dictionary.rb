dictionary = {
  :bear => "a creature that fishes in the river for salmon.",
  :river => "a body of water that contains salmon, and sometimes bears.",
  :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

puts "What word do you want to search?"
word = gets.chomp

unless word == "bear" || ( word == "river" || word == "salmon" )
  puts "This dictionary only has definitions for 'bear', 'river' and 'salmon'. Try on of these words?"
  word = gets.chomp
end

puts dictionary[word.to_sym]