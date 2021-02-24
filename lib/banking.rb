class Account
  attr_reader :name
  attr_accessor :balance

  def initialize(name, balance=100)
      @name = name
      @balance = balance
  end

  public

  def display_balance(pin_number)
    puts "Balance: £#{@balance}." if pin_number.eql? pin
  end

  def withdraw(pin_number, amount)
    pin_error if (pin_number.eql? pin) == false
    @balance = @balance - amount if pin_number.eql? pin
    puts "Withdrew £#{amount}. New balance: £#{@balance}."
  end

  def deposit(amount)
    @balance += amount
    puts "Your deposit of £#{amount} has been made. New balance is £#{@balance}"
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    puts "Access denied: incorrect PIN."
  end

end

class SavingsAccounts < Account; end


#my_account = Account.new("Raf", 500)
#error_checking = my_account.withdraw(12, 100)
#my_account.deposit(100)
