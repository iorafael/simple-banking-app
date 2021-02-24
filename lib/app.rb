require_relative 'banking'

my_account = Account.new("Raf", 500)

options = ["Display balance", "Withdraw", "Deposit", "Exit"]
puts "RUBY BANK S.A"
puts "Welcome, what would like to do:"
options.each_with_index { | option, index | puts " #{index + 1 } #{option}" }
user_input = gets.chomp.to_i



case user_input
  when 1
    puts "Digit your pin number"
    pin_user_input = gets.chomp.to_i
    puts my_account.display_balance(pin_user_input)
  when 2
    puts "Digit your pin number"
    pin_user_input = gets.chomp.to_i
    puts "What is the amount you would like to withdraw:"
    amount_user_input = gets.chomp.to_i
    puts my_account.withdraw(pin_user_input, amount_user_input)
  when 3
    puts "What is the amount you would like to add:"
    amount_user_input = gets.chomp.to_i
    puts my_account.deposit(amount_user_input)
  when 4
    exit
  else
    puts "Please digit a correct option"
end
