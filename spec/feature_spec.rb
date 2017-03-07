require 'transaction'
require 'transaction_log'
require 'account'

describe 'Bank' do

  let(:transaction_class){Transaction}
  let(:transaction_log){TransactionLog.new}
  let(:initial_balance){1000}
  let(:amount){500}
  let(:account){Account.new(initial_balance,
                            transaction_log,
                            transaction_class)}

  describe 'withdrawing from an account' do

    it 'changes the balance' do
      account.withdraw(amount)
      expect(account.view_balance).to eq(initial_balance - amount)
    end
    it 'creates a transaction' do
      expect(transaction_class).to receive(:create)
      account.withdraw(amount)
    end
    it 'stores a transaction in the transaction log' do
      time_now = '06/07/16'
      allow(account).to receive(:current_date).and_return('06/07/16')
      account.withdraw(amount)
      transaction = { date: time_now,
                      credit: '',
                      debit: amount,
                      balance: initial_balance - amount}
      expect(account.view_transactions).to eq ([transaction])
    end

  end

  describe 'depositing into an account' do
    it 'changes the balance' do
      account.deposit(amount)
      expect(account.view_balance).to eq(initial_balance + amount)
    end

    it 'creates a transaction' do
      expect(transaction_class).to receive(:create)
      account.deposit(amount)
    end

    it 'stores the transaction in the transaction log' do
      time_now = '06/07/16'
      allow(account).to receive(:current_date).and_return('06/07/16')
      account.deposit(amount)
      transaction = { date: time_now ,
                      credit: amount,
                      debit: '',
                      balance: initial_balance + amount}
      expect(account.view_transactions).to eq ([transaction])
    end

  end



end
