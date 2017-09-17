# ATM-program

## It allows you to:
* create atm
* create person
* create account
* withdraw money
* deposit money
* deactivate account

## How to use the program:

Create a new atm with the _**Atm class**_.
```ruby
atm = Atm.new
```

To use this ATM you need to create a person of the _**Person class**_ (takes arguments *name*, *cash*).
```ruby
your_name = Person.new({name: your_name_as_a_string, cash: amount_of_cash_in_integers})
```

The _**Person class**_ has these methods: **create_account**, **deposit** (takes an integer), **withdraw_cash** (takes arguments *atm*, *amount*, *pin_code*, *account*).
```ruby
your_name.create_account
your_name.deposit(amount_of_cash_in_integers)
your_name.withdraw_cash({amount: amount_of_cash_in_integers, pin_code: your_name.account.pin_code, atm: atm, account: your_name.account})
```

You can deactivate the account with the _**Account class**_ and the method **deactivate**.
```ruby
your_name.deactivate
```

## It will error if you try to withdraw/deposit money if:
* no atm is created
* no account is created
* if you try to create an account that already exists
* no account owner is set
* not enough funds in account
* not enough funds in atm
* wrong pin
* card is expired
* card is disabled
