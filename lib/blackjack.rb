def welcome()
  puts "Welcome to the Blackjack Table"
end

def deal_card()
  random_number = 0
  while random_number == 0 do 
    random_number = rand(11)
  end
  random_number
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user()
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  user_input = gets 
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round()
  num = deal_card()
  num += deal_card()
  display_card_total(num)
  num
end

def hit?(current_total)
  prompt_user()
  next_play = get_user_input()
  if next_play == 'h'
    deal_card()
  elsif next_play == 's'
    end_game(current_total)
  else 
    invalid_command()
  end
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user()
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
