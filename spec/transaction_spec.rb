require 'transaction'

describe Transaction do

  describe '#create' do
    it 'initialises with a date, credit, debit and balance' do
      date = '11/12/13'
      credit = ''
      debit = '500'
      balance = '500'
      transaction = Transaction.create(date, credit, debit, balance)
      expect(transaction).to eq ({ date: date,
                                  credit: credit,
                                  debit: debit,
                                  balance: balance
                                                    })
    end
  end

end
