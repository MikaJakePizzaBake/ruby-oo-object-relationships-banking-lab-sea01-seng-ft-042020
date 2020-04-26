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
  self.name == "valid" && self.account == "valid" ? true:false
end
end
