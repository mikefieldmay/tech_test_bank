require_relative 'lib/account'
require_relative 'lib/statement_printer'
require_relative 'lib/transaction_log'
require_relative 'lib/transaction'

transaction_log = TransactionLog.new
account = Account.new(1000, transaction_log, Transaction)

puts 'You have created an account'
