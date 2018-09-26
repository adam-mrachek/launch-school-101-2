VALID_CHOICES = %w(rock paper scissors lizard spock)

MOVES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

score = {
  'player' => 0,
  'computer' => 0
}

def reset_score(score_board)
  # score_board.update(score_board) { |value| value = 0 }
  score_board.each { |key, value| score_board[key] = 0 }
end

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def update_score(player, computer, score)
  if win?(player, computer)
    score['player'] += 1
  else
    score['computer'] += 1
  end
end

def display_score(score)
  puts "Player: #{score['player']}, Computer: #{score['computer']}"
end

def game_winner?(score)
  if score['player'] == 5
    'You won the game!'
  elsif score['computer'] == 5
    'Computer wins the game!'
  else
    false
  end
end

prompt("----------------------------")
prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
prompt("----------------------------")

choice_prompt = <<-MSG
  Choose your move:
  'r' for rock
  'p' for paper
  'sc' for scissors
  'l' for lizard
  'sp' for spock
MSG

loop do
  choice = ""

  loop do
    prompt(choice_prompt)
    choice = gets.chomp

    if VALID_CHOICES.include?(MOVES[choice])
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose #{MOVES[choice]}; Computer chose #{computer_choice}."

  display_results(MOVES[choice], computer_choice)
  update_score(MOVES[choice], computer_choice, score)
  display_score(score)

  if game_winner?(score)
    prompt(game_winner?(score))
    reset_score(score)
    prompt("Do you want to play again? (Enter 'y' to play again.)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing! Bye!")
