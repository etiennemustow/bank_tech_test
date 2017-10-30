require './account.rb'

describe "When there's nothing in the account" do
  it "should initiate with a balance of 0" do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it "should save current date" do
    account = Account.new
    current_date = DateTime.now.strftime "%d/%m/%Y"
    expect(account.date).to eq(current_date)
  end

  it "should print current date with statement" do
    account = Account.new
    expect(account.statement).to eq "date  ||  credit  ||  debit  ||  balance\n#{DateTime.now.strftime "%d/%m/%Y"} ||    ||    ||  0"
  end

  it "should print current balance with statement" do
    account = Account.new
    expect(account.statement).to eq "date  ||  credit  ||  debit  ||  balance\n#{DateTime.now.strftime "%d/%m/%Y"} ||    ||    ||  0"
  end
end
