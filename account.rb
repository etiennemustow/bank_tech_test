require 'date'

class Account
  attr_reader :date, :balance

  def initialize
    @balance = 0
    @date = DateTime.now.strftime "%d/%m/%Y"
    @transaction = []
  end

  def statement
    puts "date  ||  credit  ||  debit  ||  balance"
    puts "#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}"
    puts @transaction.join("\n")
  end

  def deposit(amount)
    @balance += amount
    @credit = amount
    @transaction.unshift("#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}")
    @credit = nil
  end

  def withdraw(amount)
    @balance -= amount
    @debit = amount
    @transaction.unshift("#{@date} ||  #{@credit}  ||  #{@debit}  ||  #{@balance}")
    @debit = nil
  end
end
