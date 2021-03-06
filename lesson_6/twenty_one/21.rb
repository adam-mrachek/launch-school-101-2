DECK = [
  ['H', '2'], ['D', '2'], ['C', '2'], ['S', '2'],
  ['H', '3'], ['D', '3'], ['C', '3'], ['S', '3'],
  ['H', '4'], ['D', '4'], ['C', '4'], ['S', '4'],
  ['H', '5'], ['D', '5'], ['C', '5'], ['S', '5'],
  ['H', '6'], ['D', '6'], ['C', '6'], ['S', '6'],
  ['H', '7'], ['D', '7'], ['C', '7'], ['S', '7'],
  ['H', '8'], ['D', '8'], ['C', '8'], ['S', '8'],
  ['H', '9'], ['D', '9'], ['C', '9'], ['S', '9'],
  ['H', '10'], ['D', '10'], ['C', '10'], ['S', '10'],
  ['H', 'J'], ['D', 'J'], ['C', 'J'], ['S', 'J'],
  ['H', 'Q'], ['D', 'Q'], ['C', 'Q'], ['S', 'Q'],
  ['H', 'K'], ['D', 'K'], ['C', 'K'], ['S', 'K'],
  ['H', 'A'], ['D', 'A'], ['C', 'A'], ['S', 'A']
]

WINNING_SCORE = 21
DEALER_STAY = 17

def prompt(msg)
  puts "=> #{msg}"
end

def total(cards)
  sum = 0
  values = cards.map { |card| card[1] }

  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.count('A').times do
    sum -= 10 if sum > WINNING_SCORE
  end

  sum
end

def deal_card(hand, deck)
  hand << deck.pop
end

def busted?(total)
  total > WINNING_SCORE
end

def hand(cards)
  hand = ""
  cards.each do |card|
    if hand.empty?
      hand << card[1]
    else
      hand << ", #{card[1]}"
    end
  end
  hand
end

def detect_result(player_total, dealer_total)
  if player_total > WINNING_SCORE
    :player_busted
  elsif dealer_total > WINNING_SCORE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :draw
  end
end

def display_result(player_total, dealer_total)
  result = detect_result(player_total, dealer_total)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :draw
    prompt "It's a draw!"
  end
end

def end_of_round_message(player_cards, dealer_cards)
  puts ""
  prompt "*****************"
  prompt "Player's hand: #{hand(player_cards)} for a total of #{total(player_cards)}."
  prompt "Dealer's hand: #{hand(dealer_cards)} for a total of #{total(dealer_cards)}"
  prompt "*****************"
  puts ""
end

def update_score(player_total, dealer_total, score)
  result = detect_result(player_total, dealer_total)

  case result
  when :player
    score[:player] += 1
  when :dealer_busted
    score[:player] += 1
  when :dealer
    score[:dealer] += 1
  when :player_busted
    score[:dealer] += 1
  end
  score
end

def winner?(score)
  if score[:player] == 5
    :player
  elsif score [:dealer] == 5
    :dealer
  end
end

def display_winner(score)
  winner = winner?(score)

  case winner
  when :player
    prompt "Player wins the game!"
  when :dealer
    prompt "Dealer wins the game!"
  end
end

def play_again?
  puts ""
  prompt "Would you like to play again? (y or n)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

system('clear') || system('cls')

prompt "----------------------"
prompt "Welcome to Twenty One!"
prompt "----------------------"

sleep 1.5

loop do
  score = {
    player: 0,
    dealer: 0
  }
  loop do
    loop do
      system('clear') || system('cls')
      game_deck = DECK.shuffle
      player_cards = []
      dealer_cards = []
      player_total = 0
      dealer_total = 0

      puts "Dealing cards..."
      sleep 1.5
      system('clear') || system('cls')

      2.times do
        deal_card(player_cards, game_deck)
        deal_card(dealer_cards, game_deck)
      end

      player_total = total(player_cards)
      dealer_total = total(dealer_cards)

      prompt "Dealer is showing a #{dealer_cards[0][1]}."
      prompt "You have #{hand(player_cards)} for a total of #{player_total}"
      sleep 1.5

      # player turn
      loop do
        player_choice = nil
        loop do
          prompt "Hit or stay? (h or s)"
          player_choice = gets.chomp.downcase
          break if ['h', 's'].include?(player_choice)

          prompt "Invalid choice. Please choose to (h)it or (s)tay."
        end

        if player_choice == 'h'
          deal_card(player_cards, game_deck)
          prompt "You chose to hit!"
          player_total = total(player_cards)
          sleep 1.0
          prompt "You have #{hand(player_cards)} for a total of #{player_total}"
        end

        break if busted?(player_total) || player_choice == 's'
      end

      if busted?(player_total)
        display_result(player_total, dealer_total)
        end_of_round_message(player_cards, dealer_cards)
        score = update_score(player_total, dealer_total, score)

        break
      else
        prompt "You chose to stay."
      end

      # dealer turn
      puts ""
      puts "Dealer's turn..."
      prompt "Dealer has #{hand(dealer_cards)} for a total of #{dealer_total}"
      puts ""
      sleep 1.0

      loop do
        break if dealer_total >= DEALER_STAY

        prompt "Dealer hits!"
        deal_card(dealer_cards, game_deck)
        dealer_total = total(dealer_cards)
        sleep 1.5
        prompt "Dealer now has #{hand(dealer_cards)} for a total of #{dealer_total}"
      end

      if busted?(dealer_total)
        display_result(player_total, dealer_total)
        end_of_round_message(player_cards, dealer_cards)
        score = update_score(player_total, dealer_total, score)

        break
      else
        prompt "Dealer stays."
      end

      sleep 1.5

      end_of_round_message(player_cards, dealer_cards)

      display_result(player_total, dealer_total)

      score = update_score(player_total, dealer_total, score)

      break
    end

    prompt "Player's Score: #{score[:player]}"
    prompt "Dealer's Score: #{score[:dealer]}"

    display_winner(score) if winner?(score)

    break if winner?(score)

    prompt "Hit enter to play next round."
    gets.chomp
  end

  sleep 1.5
  break unless play_again?
end

puts "Thanks for playing!"
