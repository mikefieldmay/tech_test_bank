class Transaction

  def self.create(date, credit, debit, balance)
    { date: date,
      credit: credit,
      debit: debit,
      balance: balance
    }
  end
  
end
