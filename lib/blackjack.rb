require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end


def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end


def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round
  # code #initial_round here

  deal_card_twice = deal_card + deal_card
  display_card_total(deal_card_twice)
 deal_card_twice

end



def hit?(card_total)
  # part 1
  prompt_user
  user_input = get_user_input
if user_input =="h"
  card_total += deal_card
elsif user_input =="s"
  card_total
else
  invalid_command
  prompt_user
  user_input = get_user_input
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
  welcome
  card_total= initial_round
  until card_total > 21
    card_total=hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
