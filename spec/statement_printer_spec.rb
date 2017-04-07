require 'statement_printer'

describe StatementPrinter do

  let(:transaction){ Struct.new("Transaction", :date, :credit, :debit, :balance )}

  let(:transaction_one) { transaction.new(
                          '14/01/2012',
                          '',
                          '500.00',
                          '2500.00' ) }

  let(:transaction_two) {  transaction.new(
                            '13/01/2012',
                            '2000.00',
                            '',
                            '3000.00' ) }
  let(:transaction_three) {  transaction.new(
                              '10/01/2012',
                              '1000.00',
                              '',
                              '1000.00' ) }
  let(:transaction_log) {double :transaction_log,  transactions: [transaction_one, transaction_two, transaction_three] }

  describe "#show" do
    it 'prints out the transactions of an account' do
      printed_statement = ["date       || credit || debit   || balance",
                           "14/01/2012 ||        ||   500.00|| 2500.00",
                           "13/01/2012 || 2000.00||         || 3000.00",
                           "10/01/2012 || 1000.00||         || 1000.00\n"].join("\n")
      expect(STDOUT).to receive(:puts).with(printed_statement)
      StatementPrinter.show(transaction_log)
    end
  end

end
