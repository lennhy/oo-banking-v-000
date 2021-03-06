require "pry"
class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(bank_account)
    @bank_account = bank_account
    @name = "Avi"
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit)
    self.balance = self.balance.to_i + deposit.to_i
    @balance
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
   self.balance > 0 && status == "open"
  end

  def close_account
    self.status = "closed"
  end

end
