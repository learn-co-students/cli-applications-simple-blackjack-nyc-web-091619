def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1..11)
end

def display_card_total(total_card)
  # code #display_card_total here
  puts "Your cards add up to #{total_card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp.strip
end

def end_game (total_card)
  # code #end_game here
  puts "Sorry, you hit #{total_card}. Thanks for playing!"
end

def initial_round 
  # code #initial_round here
  first_round = deal_card + deal_card 
  display_card_total(first_round)
  return first_round
end

def hit? (total_card)
  # code hit? here
  prompt_user
  valid_command = ["h","s"]
  user_input = get_user_input
  if user_input == "h"
    total_card += deal_card
    elsif user_input == "s"
    total_card
  else
    invalid_command
    hit?(total_card)
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total_card = initial_round
  until total_card > 21
   total_card = hit?(total_card)
   display_card_total(total_card)
  end
  end_game(total_card)
end
    
