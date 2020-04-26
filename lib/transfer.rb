class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize (sender, receiver, balance)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
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
