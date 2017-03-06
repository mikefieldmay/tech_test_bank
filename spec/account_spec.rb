require 'account'

describe Account do

  let(:initial_balance){1000}
  subject {described_class.new(initial_balance)}

  describe "::new" do
    it 'should instantiate with a default balance of 0' do
      account = Account.new
      expect(account.view_balance).to eq 0
    end
  end

  describe '#view_balance' do
    it "returns the current balance of the account" do
      expect(subject.view_balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'reduces the balance of the account' do
      withdrawal_amount = 500
      subject.withdraw(withdrawal_amount)
      expect(subject.view_balance).to eq(initial_balance - withdrawal_amount)
    end
  end

  describe '#deposit' do
    it 'increases the balance of an account' do
      deposit_amount = 500
      subject.deposit(deposit_amount)
      expect(subject.view_balance).to eq(initial_balance + deposit_amount)
    end
  end



end
