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
To use this ATM you need to create a person of the _**Person class**_ (takes arguments *name*, *cash*).

The _**Person class**_ has these methods: **create_account**, **deposit** (takes an integer), **withdraw_cash** (takes arguments *atm*, *amount*, *pin_code*, *account*).

You can deactivate the account with the _**Account class**_ and the method **deactivate**.


## It will error if you try to withdraw/deposit money if:
* no atm is created
* no account is created
* no account owner is set
* not enough funds in account
* not enough funds in atm
* wrong pin
* card is expired
* card is disabled
