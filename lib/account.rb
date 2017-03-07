class Account

  DEFAULT_BALANCE = 0

  def initialize(balance=DEFAULT_BALANCE, transaction_log, transaction_class)
    @balance = balance
    @transactions = transaction_log
    @Transaction = transaction_class
  end

  def view_balance
    @balance
  end

  def view_transactions
    @transactions.view_transactions
  end

  def withdraw(amount)
    @balance -= amount
    withdrawal_transaction(amount)
  end

  def deposit(amount)
    @balance += amount
    deposit_transaction(amount)
  end

  private

  def withdrawal_transaction(amount)
    transaction = @Transaction.create(current_date, '', amount, @balance)
    @transactions.add_transaction(transaction)
  end

  def deposit_transaction(amount)
    transaction = @Transaction.create(current_date, amount, '', @balance)
    @transactions.add_transaction(transaction)
  end

  def current_date
    Time.now.strftime('%d,%m,%y')
  end

end
