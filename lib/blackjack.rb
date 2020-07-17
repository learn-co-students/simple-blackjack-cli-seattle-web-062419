def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"

end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(num)
  total = num
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  sum = num1 + num2
  puts "Your cards add up to #{sum}"
  return sum
  
  # code #initial_round here
end


def hit?(input)
  prompt_user
  type = get_user_input
  sum = input
  if type == "h"
    num = deal_card
    sum = num + sum
  
  end
  return sum
  
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  sum = initial_round
  until sum > 21
  sum = hit?(sum)
  total = display_card_total(sum)
  end
  end_game(sum)

  # code runner here
end
    
