require 'date'

class Account
  attr_accessor
  :account_owner
  :pin_code
  :exp_date
  :account_status
  :balance

  def initialize
    @account_owner
    @pin_code = rand(1000..9999)
    @exp_date = Date.today.next_year(5).strftime("%m/%y")
    @account_status
    @balance
  end

end
