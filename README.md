Tech Test Bank
==============
A practice tech test in which to take create a bank with the following requirement:
Task
------------

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

User stories
------------
```
As a client,
so I can store my money somewhere,
I'd like to have an account.

As a client,
so I can see how much money I have,
I'd like to be able to view my balance.

As a client,
so I can get money out,
I'd like to be able to withdraw from my account.

As a client,
so I can store money,
I'd like to deposit into my.

As a client,
so I can keep track of my account,
I'd like my statement to save my interactions.

As a client,
so I can view my statement,
I'd like to be able to print my statement.
```

Getting Started
---------------
In it's current form, the application has been test driven with unit tests using stubbing and doubles. As a result you can install the application and run the tests, and the tests meet the criteria of the task, but a full feature test has not been written yet. Because of this, the app may not work properly in the development environment.


```
-$ git clone git@github.com:mikefieldmay/tech_test_bank.git
-$ cd tech_test_bank
-$ gem install bundler
-$ bundle install
-$ rspec
```

The .pryrc file is shown below which gives a summary on how to set the program up. If you type `pry` into the command line, it will set up an account for you.

```
require_relative 'lib/account'
require_relative 'lib/statement_printer'
require_relative 'lib/transaction_log'
require_relative 'lib/transaction'

transaction_log = TransactionLog.new
account = Account.new(1000, transaction_log, Transaction)

puts 'You have created an account'
```

Challenges
---------
Great opportunity to practice test driven development and object oriented design. A lot of fun to work on something relatively simple, but with scope to do it very well, or very badly.

Future improvements
---------------
Account class at this point is very bulky. It has become a bit of a God class which isn't great practice. It could potentially be broken down a future, but because of the nature of this challenge and the lack of an interface I believe it is acceptable enough.

Built With
---------

- Ruby 2.3.3
- Rspec

Authors
-------
Mike Field-May
