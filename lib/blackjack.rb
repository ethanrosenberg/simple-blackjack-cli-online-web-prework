require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card

  random = rand(1..11)

end

def display_card_total(totalcount)
  puts "Your cards add up to #{totalcount}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  first = deal_card 
  second = deal_card
  first_total = first + second
  display_card_total(first_total)
end

def hit?(totalcount)
  prompt_user
  input = get_user_input
  
  if input == "h"
    totalcount += deal_card
  elsif input == "s"
    totalcount
  else
    invalid_command
  end

end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round

   until total > 21 do
     hit?(total)
     display_card_total(total)
   end
   end_game
end
    
