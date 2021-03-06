require 'transaction_log'

describe TransactionLog do

  # subject {described_class.new}
  let(:transaction) {double :transaction}

  describe '::new' do
    it 'has an empty array of transactions' do
      expect(subject.transactions).to be_empty
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to the statement' do
      subject.add_transaction(transaction)
      expect(subject.transactions).to include(transaction)
    end
  end

end
