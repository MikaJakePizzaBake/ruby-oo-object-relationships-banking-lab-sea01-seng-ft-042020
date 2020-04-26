class Transfer
  # your code here
  attr_accessor :name, :account, :balance, :status, :amount
  def initialize (name, account, balance)
    @name = name
    @account = account
    @balance = balance
    @status = "pending"
    @amount = amount
  end
  def sender
    @name
  end
  def receiver
    @account
  end

end
