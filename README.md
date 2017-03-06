Tech Test Bank
==============
Specification
------------

Requirements
-----------

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