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
    sum -= 10 if sum > 21
  end

  sum
end

def deal_card(hand, deck)
  hand << deck.pop
end

def busted?(hand)
  total(hand) > 21
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

prompt "----------------------"
prompt "Welcome to Twenty One!"
prompt "----------------------"

sleep 1.5

loop do
  system('clear') || system('cls')
  game_deck = DECK.shuffle
  player_cards = []
  dealer_cards = []

  puts "Dealing cards..."
  sleep 1.5
  system('clear') || system('cls')

  2.times do
    deal_card(player_cards, game_deck)
    deal_card(dealer_cards, game_deck)
  end

  prompt "Dealer is showing a #{dealer_cards[0][1]}."
  sleep 1.5

  loop do
    prompt "You have #{hand(player_cards)} for a total of #{total(player_cards)}"
    sleep 1.0
    prompt "Hit or stay?"
    answer = gets.chomp.downcase
    break if answer.start_with?('s')

    deal_card(player_cards, game_deck)
    break if busted?(player_cards)
  end

  prompt "You busted! You have #{hand(player_cards)} for a total of #{total(player_cards)}" if busted?(player_cards)

  if !busted?(player_cards)
    puts ""
    puts "Dealer's turn..."
    puts ""
    sleep 1.0

    loop do
      break if busted?(dealer_cards) || total(dealer_cards) >= DEALER_STAY

      deal_card(dealer_cards, game_deck)
    end
  end

  prompt "Dealer has #{hand(dealer_cards)} for a total of #{total(dealer_cards)}"

  sleep 1.5

  if busted?(dealer_cards) || total(dealer_cards) < total(player_cards) && !busted?(player_cards)
    prompt "You win!"
  elsif total(dealer_cards) > total(player_cards) || busted?(player_cards)
    prompt "Dealer wins!"
  else
    prompt "It's a draw!"
  end

  puts ""
  prompt "Would you like to play again?"
  answer = gets.chomp.downcase
  break if answer.start_with?('n')
end

puts "Thanks for playing!"
