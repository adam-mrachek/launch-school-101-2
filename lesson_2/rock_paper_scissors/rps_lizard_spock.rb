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

  prompt("Do you want to play again? (Enter 'y' to play again.)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing! Bye!")
