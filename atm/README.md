#ATM-program

##It allows you to:
*create atm
*create person
*create account
*withdraw money
*deposit money
*deactivate account

##How to use the program:

Create a new atm with the **Atm class**.
To use this ATM you need to create a person of the **Person class** (takes arguments *name*, *cash*).

The **Person class** has these methods: **create_account**, **deposit** (takes an integer), **withdraw_cash** (takes arguments *atm*, *amount*, *pin_code*, *account*).

You can deactivate the account with the **Account class** and the method **deactivate**.


##It will error if you try to withdraw/deposit money if:
*no atm is created
*no account is created
*no account owner is set
*no name is added to owner
*Not enough funds in account
*not enough funds in atm
*wrong pin
*card is expired
*card is disabled
