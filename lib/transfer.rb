class Transfer
  # your code here
  attr_accessor :name, :account, :balance, :status
  def initialize (name, account, balance)
    @name = name
    @account = account
    @balance = balance
    @status = "pending"
  end
  def sender
    @name
  end
  def receiver
    @account
  end
  
end
