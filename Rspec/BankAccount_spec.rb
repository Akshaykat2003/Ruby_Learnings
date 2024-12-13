require_relative "BankAccount"

RSpec.describe BankAccount do
  let(:bank_account) { BankAccount.new(1000) }

  describe "#deposit" do
    it "deposits money into the account" do
      expect(bank_account.deposit(100)).to eq(1100)
    end
  end

  describe "#withdraw" do
    it "withdraws money from the account" do
      expect(bank_account.withdraw(100)).to eq(900)
    end

    it "raises an error if the amount is greater than the balance" do
      expect { bank_account.withdraw(1100) }.to raise_error(RuntimeError, "Insufficient funds")
    end
  end

  describe "#check_balance" do
    it "returns the balance of the account" do
      expect(bank_account.check_balance).to eq(1000)
    end
  end
end
