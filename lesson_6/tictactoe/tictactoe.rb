require 'pry'

EMPTY_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

score = {
  player: 0,
  computer: 0
}

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter=", ", join_word="or")
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{join_word} ")
  else
    arr[-1] = "#{join_word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----|-----|-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == EMPTY_MARKER }
end

def detect_threat(brd)
  threat_arr = WINNING_LINES.select do |line| 
    brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2 && brd.values_at(line[0], line[1], line[2]).count(EMPTY_MARKER) == 1
  end
  # threat_arr.shuffle
  # threat_arr[0]
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if detect_threat(brd).length > 0
    square = detect_threat(brd)[0].select { |num| brd[num] == EMPTY_MARKER }
    brd[square[0]] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_score(score)
  prompt "Player: #{score[:player]}, Computer: #{score[:computer]}"
end

def game_winner(score)
  if score[:player] == 5
    return 'Player'
  elsif score[:computer] == 5
    return 'Computer'
  end
  nil
end

loop do
  score[:player] = 0
  score[:computer] = 0

  loop do
    board = initialize_board

    loop do
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      # binding.pry

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won the round!"
    else
      prompt "It's a tie!"
    end

    if detect_winner(board) == 'Player'
      score[:player] += 1
    elsif detect_winner(board) == 'Computer'
      score[:computer] += 1
    end

    display_score(score)

    break if game_winner(score)

    prompt "Press any key to play next round."
    gets

  end

  prompt "#{game_winner(score)} won the game!"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
