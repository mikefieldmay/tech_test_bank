require 'transaction'

describe Transaction do

    let(:date){ '11/12/13' }
    let(:credit){ '' }
    let(:debit){ '500' }
    let(:balance){ '500' }
    let(:transaction){ Transaction.new(date, credit, debit, balance) }

  describe '#date' do
    it 'returns the date' do
      expect(transaction.date).to eq date
    end
  end

  describe '#credit' do
    it 'returns the credit value' do
      expect(transaction.credit).to eq credit
    end
  end

  describe '#debit' do
    it 'returns the debit value' do
      expect(transaction.debit).to eq debit
    end
  end

  describe '#balance' do
    it 'returns the balance' do
      expect(transaction.balance).to eq balance
    end
  end

end
