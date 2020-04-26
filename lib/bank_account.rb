class BankAccount
  attr_reader :account, :name
  attr_accessor :balance, :status
  def initialize (name)
    @account = account
    @name = name
    @balance = 1000
    @status = "open"
  end
  def deposit (amount)
    self.balance += amount
  end
  def display_balance
    self.balance
    "Your balance is $#{self.balance}."
  end
def valid?
  self.status == "open" && self.balance > 0 ? true:false
end
def close_account
  self.status = "closed"
end
