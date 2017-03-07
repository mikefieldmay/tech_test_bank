require 'account'

describe Account do

  let(:initial_balance){1000}
  let(:transaction_log){double :transaction_log}
  let(:transaction_class){double :transaction_class}
  subject {described_class.new(initial_balance, transaction_log, transaction_class)}

  describe "::new" do
    it 'should instantiate with a default balance of 0' do
      account = Account.new(transaction_log, transaction_class)
      expect(account.view_balance).to eq 0
    end
    it 'should instantiate a new transaction_log' do
      expect(transaction_log).to receive(:view_transactions)
      subject.view_transactions
    end
  end

  describe '#view_balance' do
    it "returns the current balance of the account" do
      expect(subject.view_balance).to eq initial_balance
    end
  end

  describe '#withdraw' do
    it 'reduces the balance of the account' do
      allow(transaction_class).to receive(:create)
      allow(transaction_log).to receive(:add_transaction)
      withdrawal_amount = 500
      subject.withdraw(withdrawal_amount)
      expect(subject.view_balance).to eq(initial_balance - withdrawal_amount)
    end
    it 'creates a new transaction' do
      withdrawal_amount = 500
      expect(transaction_class).to receive(:create)
      expect(transaction_log).to receive(:add_transaction)
      subject.withdraw(withdrawal_amount)
    end
    it 'adds the transaction to the transaction log' do

    end
  end

  describe '#deposit' do
    it 'increases the balance of an account' do
      allow(transaction_class).to receive(:create)
      allow(transaction_log).to receive(:add_transaction)
      deposit_amount = 500
      subject.deposit(deposit_amount)
      expect(subject.view_balance).to eq(initial_balance + deposit_amount)
    end
    it 'creates a new transaction' do
      expect(transaction_class).to receive(:create)
      expect(transaction_log).to receive(:add_transaction)
      deposit_amount = 500
      subject.deposit(deposit_amount)
    end
  end


end
