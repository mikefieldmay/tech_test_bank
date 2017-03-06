class Account

  DEFAULT_BALANCE = 0

  def initialize(balance=DEFAULT_BALANCE)
    @balance = balance
  end

  def view_balance
    @balance
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

end
