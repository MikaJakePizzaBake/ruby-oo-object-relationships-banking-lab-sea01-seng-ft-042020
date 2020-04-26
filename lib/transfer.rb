class Transfer
  # your code here
  attr_accessor :name, :account, :balance
  def initialize (name, account, balance)
    @name = name
    @account = account
    @balance = balance
  end
  def sender
    @name
  end
end
