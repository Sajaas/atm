require 'date'

class Account
  STANDARD_VALIDITY_YRS = 5

  attr_accessor :account_owner, :pin_code, :exp_date, :account_status, :balance

  def initialize
    @pin_code = rand(1000..9999)
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    @balance = 0
    @account_status = :active
  end

end
