require 'statement_printer'

describe StatementPrinter do

  let(:transaction_one) { { date: '14/01/2012',
                          credit: '',
                          debit: '500.00',
                          balance: '2500.00' }}

  let(:transaction_two) { { date: '13/01/2012',
                            credit: '2000.00',
                            debit: '',
                            balance: '3000.00' } }
  let(:transaction_three) { { date: '10/01/2012',
                              credit: '1000.00',
                              debit: '',
                              balance: '1000.00' } }
  let(:transaction_log) {double :transaction_log, view_transactions: [transaction_one, transaction_two, transaction_three] }

  describe "#show" do
    it 'prints out the transactions of an account' do
      printed_statement = ["date       || credit || debit   || balance",
                           "14/01/2012 ||        ||   500.00|| 2500.00",
                           "13/01/2012 || 2000.00||         || 3000.00",
                           "10/01/2012 || 1000.00||         || 1000.00\n"].join("\n")
      expect(StatementPrinter.show(transaction_log)).to eq printed_statement
    end
  end

end
