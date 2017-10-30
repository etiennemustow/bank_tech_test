require 'date'

class Account
  attr_reader :date, :balance

  def initialize
    @balance = 0
    @date = DateTime.now.strftime "%d/%m/%Y"
  end

  def statement
    return "date  ||  credit  ||  debit  ||  balance""\n""#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}"
  end
end
