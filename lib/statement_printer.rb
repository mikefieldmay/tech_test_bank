module StatementPrinter

  def self.show(transaction_log)
    statement = "date       || credit || debit   || balance\n"
    transaction_log.transactions.each do |transaction|
      credit_length = "#{transaction.credit}".length
      debit_length = "#{transaction.debit}".length
      balance_length = "#{transaction.balance}".length

      statement << "#{transaction.date} ||"
      statement << (" "* (8 - credit_length)) + "#{transaction.credit}||"
      statement << (" "* (9 - debit_length)) + "#{transaction.debit}||"
      statement << (" "* (8 - balance_length)) + "#{transaction.balance}\n"
    end
    puts statement
  end
end
