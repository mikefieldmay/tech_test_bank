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
      expect(account.balance).to eq(initial_balance - amount)
    end
    it 'creates a transaction' do
      expect(transaction_class).to receive(:new)
      account.withdraw(amount)
    end
    it 'stores a transaction in the transaction log' do
      account.withdraw(amount)
      expect(account.view_transactions).to include Transaction
    end

  end

  describe 'depositing into an account' do
    it 'changes the balance' do
      account.deposit(amount)
      expect(account.balance).to eq(initial_balance + amount)
    end

    it 'creates a transaction' do
      expect(transaction_class).to receive(:new)
      account.deposit(amount)
    end

    it 'stores the transaction in the transaction log' do
      account.deposit(amount)
      expect(account.view_transactions).to include Transaction
    end
  end

end
