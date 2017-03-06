require 'statement'

describe Statement do

  subject {described_class.new}
  let(:transaction) {double :transaction}

  describe 'default' do
    it 'has an empty array of transactions' do
      expect(subject.view_transactions).to be_empty
    end
  end

  describe '#add_transaction' do
    it 'adds a transaction to the statement' do
      subject.add_transaction(transaction)
      expect(subject.view_transactions).to include(transaction)
    end
  end

end
