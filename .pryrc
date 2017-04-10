require_relative 'lib/account'
require_relative 'lib/statement_printer'
require_relative 'lib/transaction_log'
require_relative 'lib/transaction'

transaction_log = TransactionLog.new
account = Account.new(1000, transaction_log, Transaction)

puts 'You have created an account with a balance of £1000'
puts 'To add funds please use account.deposit(amount)'
puts 'To remove funds please use account.withdraw(amount)'
puts 'To view your current balance use account.balance'
puts 'To view a printed statement please type StatementPrinter.show(transaction_log)'
