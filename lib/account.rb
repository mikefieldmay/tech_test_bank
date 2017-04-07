class Account

  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize(balance=DEFAULT_BALANCE, transaction_log, transaction_class)
    @balance = balance
    @transactions_log = transaction_log
    @Transaction = transaction_class
  end

  def view_transactions
    @transactions_log.transactions
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

  attr_writer :balance

  def withdrawal_transaction(amount)
    transaction = @Transaction.new(current_date, '', amount, @balance)
    @transactions_log.add_transaction(transaction)
  end

  def deposit_transaction(amount)
    transaction = @Transaction.new(current_date, amount, '', @balance)
    @transactions_log.add_transaction(transaction)
  end

  def current_date
    Time.now.strftime('%d,%m,%Y')
  end

end
