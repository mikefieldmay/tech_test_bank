class TransactionLog

  def initialize
    @transactions = []
  end

  def view_transactions
    @transactions
  end

  def add_transaction(transaction)
    @transactions << transaction
  end

end
