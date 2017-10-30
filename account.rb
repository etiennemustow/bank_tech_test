require 'date'

class Account
  attr_reader :date, :balance

  def initialize
    @balance = 0
    @date = DateTime.now.strftime "%d/%m/%Y"
    @transaction = ["date  ||  credit  ||  debit  ||  balance", "#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}"]
  end

  def statement
    puts @transaction.join("\n")
  end

  def deposit(amount)
    @balance += amount
    @debit = amount
    @transaction.push("#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}")
  end

  def withdraw(amount)
    @balance -= amount
    @credit = amount
    @transaction.push("#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}")
  end
end
