# Overview

This is a interactive bank account simulator which is used with IRB.


# Technologies Used

I used Ruby for the code and RSpec was used for testing

# Set-up

* Clone this repo
* Open IRB
```ruby
require './account.rb'
account = Account.new
```
* You can deposit money
```ruby
account.deposit(100)
```

* You can then view the statement
```ruby
> account.statement

date  ||  credit  ||  debit  ||  balance
30/10/2017 ||    ||    ||  100
30/10/2017 ||  100  ||    ||  100
```
