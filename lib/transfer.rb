class Transfer
  # your code here
  attr_accessor :name, :account, :balance, :status, :amount
  def initialize (name, account, balance)
    @name = name
    @account = account
    @balance = balance
    @status = "pending"
    @amount = 50
  end
  def sender
    @name
  end
  def receiver
    @account
  end
  def valid?
    @sender.valid? && @receiver.valid? ? true:false
  end

  def execute_transaction
    if valid? && @sender.balance > @amount && status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end
