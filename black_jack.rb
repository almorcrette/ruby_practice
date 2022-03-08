# Write a program that lets a user play a solo game of
# Blackjack. The program should:
# * Ask the player if they want to "hit" or "stick".
#   * If the player hits, add a card to their hand (which starts empty unlike real Blackjack)
#   * If the player sticks, end the game.
# * Keep asking the player if they want to "hit" or "stick" until they
#   say "stick".
# * Each time the player hits, calculate the score for the player's
#   hand and `puts` `Score so far: ` and the score.
#   * e.g. `Score so far: 23`
#   * A score is calculated by adding up the values of each of the
#     cards in the player's hand.
#   * Value for each card:
#     * "two": 2
#     * "three": 3
#     * "four": 4
#     * "five": 5
#     * "six": 6
#     * "seven": 7
#     * "eight": 8
#     * "nine": 9
#     * "ten": 10
#     * "jack": 10
#     * "queen": 10
#     * "king": 10
#     * "ace": 11 (This is slightly different from real Blackjack.)
# * When the game is over, `puts` the outcome of the game.
#   * If the player's score is `<= 21`, `puts` `You scored: ` and the
#     final score
#     * e.g. `You scored: 20`
#   * If the player's score is `> 21`, `puts` `You busted with: ` and
#     the final score.
#     * e.g. `You busted with: 25`

# * As part of your solution, there should be four specific methods:
#   * `random_card`: This has already been written for you.  You don't
#     need to change it.
#   * `move`: Asks the player for a move.  If they enter `hit` or
#     `stick`, it returns the move.  If they enter something else, it
#     keeps asking them until they enter `hit` or `stick`.
#   * `score`: Takes an array of cards and returns the score for the
#     hand as an integer.
#   * `run_game`: uses the other methods to run a game of Blackjack.
#
# * Note: To stop the game when the user sticks, don't use `exit` to
#   quit the program because this will break the automated tests.  To
#   exit a while loop early, use the `break` keyword.
#
# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to `run_test` or any other
#   methods.

# You don't need to change this method!
def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

# Requires a hand: array object called 'hand' (as part of run_game method)

# Requires score sheet: hash with keys as cards, and values as the card scores
# as part of the score method

# Requires score method: one parameter: hand,
# hand is an array of cards in the hand
# creates the scoresheet (hash) object
# create integer object called 'score' and set it to zero
  # for each card in the hand
    # run the card in the scoresheet hash as key, and add the value to the score
  # return the score
  
def score(hand)
  
  scoresheet = {
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9,
    "ten" => 10,
    "jack" => 10,
    "queen" => 10,
    "king" => 10,
    "ace" => 11 
  }
  
  score = 0
  
  hand.each { |card| score += scoresheet[card] }
  
  score

end
  
# Requires move method: one parameter: hand,
  # create string object called 'move' and set it to the empty string
  # Initiates a while/until loop that stops when 'move' is 'hit' or 'stick'
    # asks for the move,...
    # inputs the move a string object called 'instruction'
    # may need to cater for no nil input
  # cases 'move'
    # when move is 'hit'
      # Add use random_card method to generate a random card and add it to hand
      # Use score method to return the score of the new hand
      # puts "Score so far: " and the score
    # when move is 'stick'
      # puts final score message (including score)
      # breaks program

def move(hand)
  
  instruction = String.new("")
  
  while instruction != "hit" && instruction != "stick" do
    puts "hit or stick?"
    try = gets
    try ||= ""
    instruction = try.chomp
  end
  
  case instruction
    when "hit"
      hand.push(random_card)
      puts "Score so far: #{score(hand)}" 
      return { "hand" => hand, "instruction" => instruction }
    when "stick"
      puts "You scored: #{score(hand)}"
      return { "hand" => hand, "instruction" => instruction }
  end

end
  
# Requires run_game method. No parameter
  # creates the hand (array) object
  # Create a loop
    # run the move method
    # if hand > 21
      # puts busted message (including score)
      # breaks program

def run_game
  hand = []
  while true do
    
    state_of_play = move(hand)
    hand = state_of_play["hand"]
    instruction = state_of_play["instruction"]

    if instruction == "stick"
      break
    end
    
    if score(hand) > 21
      puts "You busted with: #{score(hand)}"
      break
    end
    
  end

end



