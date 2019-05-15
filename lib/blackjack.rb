def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here

  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  num1 + num2
end

def hit?(total)
  # code hit? here

  prompt_user
  input = get_user_input

  if input == "h"
    num3 = deal_card

  elsif input == "s"
    num3 = 0
  else
    invalid_command(input)
  end
  total + num3

end

def invalid_command(input)
  if input != "s" || input != "h"
    puts "Please enter a valid command"
  end
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

  welcome
  total = initial_round
  total = hit?(total)
  display_card_total(total)
  end_game(total)
end
