class Account

  DEFAULT_BALANCE = 0

  def initialize(balance=DEFAULT_BALANCE, statement_class)
    @balance = balance
    @statement = statement_class.new
  end

  def view_balance
    @balance
  end

  def view_statement
    @statement
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

end
